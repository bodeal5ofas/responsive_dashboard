import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveText(context,fontSize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
  }
  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',
    );
  }
  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }
   static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
  }

 static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveText(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }
   static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveText(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
  }
    static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveText(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }
   static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveText(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }
}

double getResponsiveText(BuildContext context,{required int fontSize}) {
  double scaleFactor = getScaleFactor(context);
  var responsiveFontsize = fontSize * scaleFactor;
  double lower = fontSize * 0.8;
  double upper = fontSize * 1.2;
  return responsiveFontsize.clamp(lower, upper);
}

double getScaleFactor(BuildContext context) {
  // var distapcher = PlatformDispatcher.instance;
  // var physicalwidth = distapcher.views.first.physicalSize.width;
  // var devicePixelRatio = distapcher.views.first.devicePixelRatio;
//  var width = physicalwidth / devicePixelRatio;
  var width = MediaQuery.of(context).size.width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1600;
  }
}
