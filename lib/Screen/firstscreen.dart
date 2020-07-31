import 'package:flutter/material.dart';
import 'package:weather_app/main.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/Services/Location.dart';
import 'package:weather_app/Services/Networkingpart.dart';
import 'dart:convert';
import 'package:weather_app/FrontFiles/uppercontainer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/test.dart';
class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
  }

  double latitude;
  double longitude;
  double temperature;
  String Cityname;
  int conditionid;
  String iconid;
  var Decodeddata;



  void getLocation() async {
    Location location = Location();
    await location.getCurrentlocation();

    Networking networking = Networking(
        url:
        "https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric"
    );

    Decodeddata = await networking.getData();
Navigator.push(context, MaterialPageRoute(builder: (context){
  return MyApp(Weatherdata: Decodeddata);
}));

    temperature = jsonDecode(Decodeddata)['main']['temp'];
    iconid = jsonDecode(Decodeddata)['weather'][0]['icon'];
    conditionid = jsonDecode(Decodeddata)['weather'][0]['id'];
    Cityname = jsonDecode(Decodeddata)['name'];

  }



  @override
  Widget build(BuildContext context) {
    return Center(child: SpinKitDoubleBounce(
      color: Colors.white,
      size: 50,
    ));
  }
}


