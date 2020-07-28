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
      body: SafeArea(
        child: Container(
          child: Column(children: [
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
            Text("Week",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,),
            Expanded(
              child: SizedBox(height: Sizeconfig.defaultsize *50
                ,
                width: double.infinity,

              ),
            )
          ],)
        ),
      ),
    );
  }
}
