
import 'package:flutter/material.dart';

 class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static double? screenWidth;
  static double? screenHight;
  static double? defultSize;
  static Orientation? orientation;

  static void init(context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defultSize = orientation == Orientation.landscape
        ? screenHight! * 0.024
        : screenWidth! * 0.024;
  }
}
