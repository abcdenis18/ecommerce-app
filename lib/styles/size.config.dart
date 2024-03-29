import 'package:flutter/cupertino.dart';

class SizeConfig {
  MediaQueryData _mediaQueryData;
  static double screenSize;
  static double screenWidth;
  static double screenHeight;
  Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    screenSize = orientation == Orientation.landscape? screenHeight * 0.024 : screenWidth * 0.024;
  }
}