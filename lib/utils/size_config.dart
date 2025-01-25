import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopBreakPoint = 1200;
  static const double tabletBreakPoint = 800;
  static late double width, height;
  static void init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
