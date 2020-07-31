import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/size_config.dart';
import 'package:weather_app/FrontFiles/DAYROQ.dart';
import 'package:weather_app/Screen/weekScreen.dart';
import 'package:weather_app/Services/Networkingpart.dart';
import 'dart:convert';
class middlecoloumn extends StatelessWidget {
//  var weekdataValues1;
//  middlecoloumn({this.weekdataValues1});
//double lat1,long1;
var weekDatavalues;


//middlecoloumn({this.lat1,this.long1});

void getWeekdata(double lat, double lon) async {


  Networking networking = Networking(
      url:
      "https://api.weatherbit.io/v2.0/forecast/daily?&lat=$lat&lon=$lon&key=26a7cb51c53c4d61b700b193dd1fd0db");

  weekDatavalues = await networking.getData();

  weeekScreen weekscr = weeekScreen();
  weekscr.updateui23(weekdata231: weekDatavalues);

//
//    weeekScreen weekscr = weeekScreen(weekdata: weekDatavalues);


//    middlecoloumn middle =  middlecoloumn(weekdataValues1: weekDatavalues);


}



  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
//            Container(
//
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  rowchild(
//                    iconSrc: "assets/meter.svg",
//                    iconvalue: "75 %",
//                  ),
//                  rowchild(
//                    iconSrc: "assets/umbrella.svg",
//                    iconvalue: "31mm",
//                  ),
//                  rowchild(
//                    iconvalue: "4.2mph",
//                    iconSrc: "assets/air1.svg",
//                  ),
//                ],
//              ),
//            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "8:10 AM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizeconfig.defaultsize * 5,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "Sat,6 Aug",
              style: TextStyle(
                  color: Color(0XffB1BAC6),
                  fontSize: Sizeconfig.defaultsize * 1.6,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              child: Row(
                children: [
                  daysrows(
                    function: (){

                    },
                    name: "Today",
                  ),
                  daysrows(
                    function: (){

                    },
                    name: "Tommorow",
                  ),
                  daysrows(
                    name: "Week",
                    function: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> weeekScreen()));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class rowchild extends StatelessWidget {
  final String iconSrc;
  final String iconvalue;

  rowchild({this.iconSrc, this.iconvalue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: SvgPicture.asset
            (iconSrc,height: 40,
          width: 40,),
        ),
        Text(
          iconvalue,
          style: GoogleFonts.getFont('Montserrat',
              color: Color(
                0xFFB1BAC6,
              ),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
