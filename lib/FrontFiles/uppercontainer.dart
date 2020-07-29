import 'package:weather_app/main.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'dart:convert';

class containerupper extends StatefulWidget {
  containerupper({this.Weatherdata});
  var Weatherdata;

  @override
  _containerupperState createState() => _containerupperState();
}

class _containerupperState extends State<containerupper> {
  double temperature;
  String Cityname;
  int conditionid;
  String iconid;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.Weatherdata);

  }
  void updateUI(dynamic weatherdata){

    temperature = jsonDecode(weatherdata)['main']['temp'];
    iconid = jsonDecode(weatherdata)['weather'][0]['icon'];
    conditionid = jsonDecode(weatherdata)['weather'][0]['id'];
    Cityname = jsonDecode(weatherdata)['name'];



  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF314776),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Sizeconfig.defaultsize * 5))),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text("$Cityname",
                        style: GoogleFonts.getFont("Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white)),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: Sizeconfig.defaultsize * 3),
                      child: Container(
                        child: TextField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(
                                      Sizeconfig.defaultsize * 3)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  borderRadius: BorderRadius.circular(
                                      Sizeconfig.defaultsize * 3)),
                              prefixIcon: GestureDetector(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white10,
                              hintText: "Enter City Here",
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  )

//                  IconButton(
//
//                  onPressed: (){
//
//                  },
//                    icon: SvgPicture.asset(
//                      'assets/search.svg',
//                    ),
//                      )
                ],
              ),
              SizedBox(
                height: Sizeconfig.defaultsize * 1,
              ),
              Row(
                children: [
                  Text(
                    "India",
                    style: GoogleFonts.getFont("Montserrat",
                        fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/shiv3.svg',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          "Cloudy",
                          style: GoogleFonts.getFont("Montserrat",
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "12°C",
                      style: GoogleFonts.getFont("Montserrat",
                          color: Colors.white,
                          fontSize: Sizeconfig.defaultsize * 7),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
