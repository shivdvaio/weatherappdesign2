import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'uppercontainer.dart';
import 'DAYROQ.dart';
import 'package:weather_app/size_config.dart';
import 'middlecoloumn.dart';

class Shiv extends StatefulWidget {

  @override
  _ShivState createState() => _ShivState();
}

class _ShivState extends State<Shiv> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(Sizeconfig.defaultsize * 3),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizeconfig.defaultsize* 3),
            color: Colors.grey.withOpacity(0.4)),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
          Padding(
            padding:  EdgeInsets.all(Sizeconfig.defaultsize * 2),
            child: Row(
              children: [
                decoratedbox(time: "3AM",temp: "8C",),
                SizedBox(width: Sizeconfig.defaultsize * 2,),
                decoratedbox(time: "3AM",temp: "8C",),
                SizedBox(width: Sizeconfig.defaultsize * 2,),
                decoratedbox(time: "4PM",temp: "8C",), SizedBox(width: Sizeconfig.defaultsize * 2,),
                decoratedbox(time: "4PM",temp: "8C",),
                SizedBox(width: Sizeconfig.defaultsize * 2,),
                decoratedbox(time: "3AM",temp: "8C",),
                SizedBox(width: Sizeconfig.defaultsize * 2,),
                decoratedbox(time: "4PM",temp: "8C",), SizedBox(width: Sizeconfig.defaultsize * 2,),
                decoratedbox(time: "4PM",temp: "8C",),




            ],),
          )
        ],)
    ));
  }
}

class decoratedbox extends StatelessWidget {
  final String time;
  final String temp;
  decoratedbox({this.time, this.temp});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xFF314776)),
        child: Container(
          height: Sizeconfig.defaultsize * 12,
          width: Sizeconfig.defaultsize * 6,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  time,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  temp,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ));
  }
}

//
//
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),),
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),),
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),),
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),),
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),),
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),),
//Expanded(child: decoratedbox(temp: "3",time: "5pm",),)
