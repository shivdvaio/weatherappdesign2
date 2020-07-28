import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/size_config.dart';
import 'package:weather_app/Screen/weekScreen.dart';

class dayrowmain extends StatelessWidget {
  const dayrowmain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          daysrows(

            name: "Today",


          ),
          daysrows(
            name: "Tommorow",
          ),
          daysrows(
            name: "Week",
          )
        ],
      ),
    );
  }
}

class daysrows extends StatelessWidget {
  final String name;
  final Function function;
  daysrows({this.name,this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(Sizeconfig.defaultsize * 1),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> weekScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFB1BAC6).withOpacity(0.5),
                borderRadius: BorderRadius.circular(Sizeconfig.defaultsize * 2)),
            height: Sizeconfig.defaultsize * 4,
            width: Sizeconfig.defaultsize * 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
