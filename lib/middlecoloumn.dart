import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/size_config.dart';
import 'DAYROQ.dart';
import 'package:weather_app/Screen/weekScreen.dart';

class middlecoloumn extends StatelessWidget {
  const middlecoloumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowchild(
                    iconSrc: "assets/meter.svg",
                    iconvalue: "75 %",
                  ),
                  rowchild(
                    iconSrc: "assets/umbrella.svg",
                    iconvalue: "31mm",
                  ),
                  rowchild(
                    iconvalue: "4.2mph",
                    iconSrc: "assets/air1.svg",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "8:10 AM",
                  style: TextStyle(
                      color: Colors.black,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> weekScreen()));
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
