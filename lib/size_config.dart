import 'package:flutter/widgets.dart';

class Sizeconfig {

  static MediaQueryData _mediaquerydata;
  static double height;
  static double width;
  static Orientation _orientation;
  static double defaultsize;

  static void getsize(BuildContext context) {
    _mediaquerydata = MediaQuery.of(context);
    height = _mediaquerydata.size.height;
    width = _mediaquerydata.size.width;
    defaultsize = _orientation == Orientation.landscape ?
    height * 0.024 :
    width * 0.024;
  }

}