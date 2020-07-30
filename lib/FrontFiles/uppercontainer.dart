import 'package:weather_app/main.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:convert';
import 'package:weather_app/Services/Networkingpart.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';

const apiKey1 = "d3bbf9a000350c269dd83714906b91c2";

class containerupper extends StatefulWidget {
    var dataOfWeather;

  containerupper({this.dataOfWeather});

  @override
  _containerupperState createState() => _containerupperState();
}

class _containerupperState extends State<containerupper> {
  final TextEditingController _controller = new TextEditingController();
  String typeCityname;
  double latitude;
  double longitude;
  double temperature;
  String Cityname;

  String iconid;
  String Countryname;
  dynamic dataofweather1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateui(widget.dataOfWeather);
  }

// MyApp myApp = MyApp();
//  var dataOfWeather = myApp.Weatherdata;
  void updateui(dataofweather1) {

    temperature = jsonDecode(dataofweather1)['main']['temp'];
    iconid = jsonDecode(dataofweather1)['weather'][0]['icon'];

    Cityname = jsonDecode(dataofweather1)['name'];
    Countryname = jsonDecode(dataofweather1)['sys']['country'];
  }


  void UpdateWeatherbyCityname(typeCityname) async {
    Networking networking = Networking(
        url:"https://api.openweathermap.org/data/2.5/weather?q=$typeCityname&appid=$apiKey1&units=metric&units=metric");
    var datareturnbyycityname = await networking.getData();

    if (datareturnbyycityname==null){
      _controller.clear();
      InfoBgAlertBox(
          title: "City Name Error",
          titleTextColor: Colors.white,
          infoMessage: "City Name Wrong",
          context: context);
    }
    _controller.clear();

    temperature = jsonDecode(datareturnbyycityname)['main']['temp'];
    iconid = jsonDecode(datareturnbyycityname)['weather'][0]['icon'];

    Cityname = jsonDecode(datareturnbyycityname)['name'];
    Countryname = jsonDecode(datareturnbyycityname)['sys']['country'];
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
                      EdgeInsets.only(left: Sizeconfig.defaultsize * 1),
                      child: Container(
                        child: TextField(
                          controller: _controller,
                          cursorColor: Colors.white,
                          style: TextStyle(
                              color: Colors.white, fontSize: 17),
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
                                child: GestureDetector(
                                  onTap: () {
                                    if (typeCityname != null) {
                                      UpdateWeatherbyCityname(typeCityname);
                                      FocusScope.of(context).unfocus();
                                    } else {
                                      InfoBgAlertBox(
                                          title: "City Name Error",
                                          titleTextColor: Colors.white,
                                          infoMessage: "Empty City Name",
                                          context: context);

                                      FocusScope.of(context).unfocus();
                                    }
                                  },
                                  child: Icon(

                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white10,
                              hintText: "Enter City",
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.bold)),

                          onChanged: (value) {
                            typeCityname = value;

                          },
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
                    "$Countryname",
                    style: GoogleFonts.getFont("Montserrat",
                        fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
//                        IconButton(
//                          icon: SvgPicture.asset(
//                            'assets/shiv3.svg',
//                            height: 40,
//                            width: 40,
//                          ),
//                        ),
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
                      "${temperature.toStringAsFixed(2)}°C",
                      style: GoogleFonts.getFont("Montserrat",
                          color: Colors.white,
                          fontSize: Sizeconfig.defaultsize * 4),
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