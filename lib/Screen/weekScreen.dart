import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/Screen/firstscreen.dart';
import 'package:weather_app/main.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/FrontFiles/DaysandTemp.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/size_config.dart';
import 'package:weather_app/main.dart';
import 'dart:convert';
import 'package:weather_app/FrontFiles/uppercontainer.dart';

class weeekScreen extends StatefulWidget {
   static var weekdata231;


//  weeekScreen({this.weekdata231});

//void updateui23( ){
//
//print()
//
//}

  void updateui23({weekdata231}) {



  }

  @override
  _weeekScreenState createState() => _weeekScreenState();
}

class _weeekScreenState extends State<weeekScreen> {
  String date1, date2, date3, date4, date5, date6, date7;
  double date1Temp,
      date2Temp,
      date3Temp,
      date4Temp,
      date5Temp,
      date6Temp,
      date7Temp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print(weeekScreen.weekdata231);
  }

  void getweeekdatainfin(var weekdatasss) {}

  void updateUI(var Weekdata) {
    print(Weekdata);
    setState(() {
      date1 = jsonDecode(Weekdata)['data'][0]['valid_date'];
      date2 = jsonDecode(Weekdata)['data'][1]['valid_date'];
      date3 = jsonDecode(Weekdata)['data'][3]['valid_date'];
      date4 = jsonDecode(Weekdata)['data'][4]['valid_date'];
      date5 = jsonDecode(Weekdata)['data'][5]['valid_date'];
      date6 = jsonDecode(Weekdata)['data'][6]['valid_date'];
      date7 = jsonDecode(Weekdata)['data'][7]['valid_date'];

      date1Temp = jsonDecode(Weekdata)['data'][0]['temp'];
      date2Temp = jsonDecode(Weekdata)['data'][1]['temp'];
      date3Temp = jsonDecode(Weekdata)['data'][2]['temp'];
      date4Temp = jsonDecode(Weekdata)['data'][3]['temp'];
      date5Temp = jsonDecode(Weekdata)['data'][4]['temp'];
      date6Temp = jsonDecode(Weekdata)['data'][5]['temp'];
      date7Temp = jsonDecode(Weekdata)['data'][6]['temp'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF314776),
        leading: IconButton(
          iconSize: Sizeconfig.defaultsize * 3,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FirstScreen();
            }));
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
                    rowItems(daydate: 43.3, temp: 43.3),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded rowItems({dynamic daydate, double temp}) {
    return Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.teal.withOpacity(0.6), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$daydate",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(Sizeconfig.defaultsize * 2),
              child: Container(
                child: Row(
                  children: [
//                  IconButton(
//                    icon: SvgPicture.asset(IconSrc),
//                  ),
                    SizedBox(
                      width: Sizeconfig.defaultsize * 4,
                    ),
                    Text("$temp",
                        style: TextStyle(color: Colors.white, fontSize: 20))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
