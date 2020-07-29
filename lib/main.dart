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

const apiKey = "d3bbf9a000350c269dd83714906b91c2";
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Sizeconfig.getsize(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    backgroundColor: Colors.blueAccent.withOpacity(0.4),
        appBar: AppBar(
          title: Text("Weather App",style: TextStyle(fontWeight: FontWeight.bold),),
          leading: IconButton(icon: Icon(

              Icons.navigation,
          color: Colors.white,
          size: 35,
          ),),
          backgroundColor: Color(0xFF314776),
          elevation: 0,
          actions: [

            IconButton(
              icon: SvgPicture.asset('assets/icons2.svg',
              height: Sizeconfig.defaultsize * 4,
              width: Sizeconfig.defaultsize * 4,),
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
  double latitude;
  double longitude;
  double temperature;
  String Cityname;
  int conditionid;
  String iconid;


  void getLocation() async {
    Location location = Location();
    await location.getCurrentlocation();

    Networking networking = Networking(
        url:
        "https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey");

    var Decodeddata= await networking.getData();

//    Navigator.push(context, MaterialPageRoute(builder: (context){
//      return containerupper(Weatherdata: Decodeddata);
//    }));

    temperature = jsonDecode(Decodeddata)['main']['temp'];
    iconid = jsonDecode(Decodeddata)['weather'][0]['icon'];
    conditionid = jsonDecode(Decodeddata)['weather'][0]['id'];
    Cityname = jsonDecode(Decodeddata)['name'];

  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          containerupper(),
          SizedBox(
            height: Sizeconfig.defaultsize * 60,
            child: Column(

              children: [
                middlecoloumn(),

                Expanded(child: Shiv())
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
