import 'package:weather_app/main.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class containerupper extends StatelessWidget {
  const containerupper({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF314776),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Sizeconfig.defaultsize * 5))),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("London",
                      style: GoogleFonts.getFont("Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white)),
                ],
              ),
              SizedBox(
                height: Sizeconfig.defaultsize * 1,
              ),
              Row(
                children: [
                  Text(
                    "United Kingdom",
                    style: GoogleFonts.getFont("Montserrat",
                        fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 100,
                          icon: SvgPicture.asset('assets/shiv3.svg'),
                        ),
                        Text(
                          "Cloudy",
                          style: GoogleFonts.getFont("Montserrat",
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "12°C",
                      style: GoogleFonts.getFont("Montserrat",
                          color: Colors.white,
                          fontSize: Sizeconfig.defaultsize * 7),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
