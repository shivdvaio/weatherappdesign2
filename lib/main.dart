import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'uppercontainer.dart';
import 'DAYROQ.dart';
import 'package:weather_app/size_config.dart';
import 'middlecoloumn.dart';
import 'package:weather_app/DaysandTemp.dart';

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
        appBar: AppBar(
          backgroundColor: Color(0xFF314776),
          elevation: 0,
          actions: [
            IconButton(
              icon: SvgPicture.asset('assets/icons2.svg'),
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

        children: [
          containerupper(),
          SizedBox(
            height: Sizeconfig.defaultsize * 50,
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
