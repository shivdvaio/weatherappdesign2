import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FrontFiles/uppercontainer.dart';
import 'package:weather_app/FrontFiles/DAYROQ.dart';
import 'package:weather_app/size_config.dart';
import 'FrontFiles/middlecoloumn.dart';
import 'package:weather_app/FrontFiles/DaysandTemp.dart';
import 'package:weather_app/Services/Location.dart';
import 'package:weather_app/Services/Networkingpart.dart';
import 'dart:convert';
import 'Screen/firstscreen.dart';

import 'FrontFiles/uppercontainer.dart';
import 'package:weather_app/Screen/firstscreen.dart';
const apiKey = "d3bbf9a000350c269dd83714906b91c2";

void main() {
  runApp(MaterialApp(
    initialRoute: 'first',
      routes: {
         'first':(context)=> FirstScreen(),

      },
      debugShowCheckedModeBanner: false, home: MyApp()));
}

dynamic WeatherDataFromServer;
class MyApp extends StatefulWidget {


  //come from Firstscreen

  var Weatherdata;

  MyApp({this.Weatherdata});



  @override
  _MyAppState createState() => _MyAppState();
}

String cityname;
class _MyAppState extends State<MyApp> {


  double temperature;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI1(widget.Weatherdata);
  }

  void updateUI1(dynamic data){
    // same data from first screen
    WeatherDataFromServer = data;
    // and transfer to upper container

  }
  @override
  Widget build(BuildContext context) {
    Sizeconfig.getsize(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent.withOpacity(0.4),
        appBar: AppBar(
          title: Text(
            "Weather App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
//            onPressed: (){
//              setState(() {
//                cityname = jsonDecode(WeatherDataFromServer)['name'];
//              });
//            },
            icon: Icon(
              Icons.navigation,
              color: Colors.white,
              size: 35,
            ),
          ),
          backgroundColor: Color(0xFF314776),
          elevation: 0,
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons2.svg',
                height: Sizeconfig.defaultsize * 4,
                width: Sizeconfig.defaultsize * 4,
              ),
            ),
            SizedBox(
              width: Sizeconfig.defaultsize * 1,
            )
          ],
        ),
        body: Body(),
      ),
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
    return SingleChildScrollView(
        child: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // weather data transfer to upper container from main.
          containerupper(dataOfWeather:WeatherDataFromServer),
          SizedBox(
            height: Sizeconfig.defaultsize * 60,
            child: Column(
              children: [middlecoloumn(), Expanded(child: Shiv())],
            ),
          ),
        ],
      ),
    ));
  }
}
