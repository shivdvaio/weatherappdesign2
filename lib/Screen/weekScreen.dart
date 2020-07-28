import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/main.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/DaysandTemp.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/size_config.dart';
import 'package:weather_app/main.dart';

class weekScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF314776),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF314776),
        leading: IconButton(
          iconSize: Sizeconfig.defaultsize * 3,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons2.svg',
              height: Sizeconfig.defaultsize * 4,
              width: Sizeconfig.defaultsize * 4,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: Sizeconfig.defaultsize * 20,
                      width: Sizeconfig.defaultsize * 20,
                      child: SvgPicture.asset('assets/city.svg')),
                ),
              ],
            ),
            Text(
              "Week",
              style: TextStyle(
                fontFamily: "Acme",
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(Sizeconfig.defaultsize * 2),
              child: Container(
                height: Sizeconfig.defaultsize * 50,
                width: Sizeconfig.defaultsize * 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Rowsitems(
                      dayname: "Monday",
                      IconSrc: "assets/cloud5.svg",
                      temp: "32",
                    ),
                    Rowsitems(
                      dayname: "Tuesday",
                      IconSrc: "assets/cloud5.svg",
                      temp: "32",
                    ),
                    Rowsitems(
                      dayname: "Wednesday",
                      IconSrc: "assets/cloud5.svg",
                      temp: "33",
                    ),
                    Rowsitems(
                      dayname: "Thursday",
                      IconSrc: "assets/cloud5.svg",
                      temp: "32",
                    ),
                    Rowsitems(
                      dayname: "Friday",
                      IconSrc: "assets/cloud5.svg",
                      temp: "33",
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Rowsitems extends StatelessWidget {
  final String dayname;
  final String IconSrc;
  final String temp;
  Rowsitems({this.dayname, this.IconSrc, this.temp});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dayname,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Padding(
            padding:  EdgeInsets.all(Sizeconfig.defaultsize * 2),
            child: Container(
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(IconSrc),
                  ),
                  SizedBox(width: Sizeconfig.defaultsize * 4,),
                  Text(temp,style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
