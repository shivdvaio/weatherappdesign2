import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FrontFiles/uppercontainer.dart';
import 'package:weather_app/FrontFiles/DAYROQ.dart';
import 'package:weather_app/size_config.dart';
import 'FrontFiles/middlecoloumn.dart';
import 'package:weather_app/FrontFiles/DaysandTemp.dart';


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
