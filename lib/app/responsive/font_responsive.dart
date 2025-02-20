import 'package:flutter/material.dart';

class FontResponsive {
  static final FontResponsive _instance = FontResponsive._internal();

  factory FontResponsive() {
    return _instance;
  }

  FontResponsive._internal();

  late double deviceWidth;
  late bool isTablet;
  late bool isLandscape;

  void init(BuildContext context) {
    // final deviceHeight = MediaQuery.of(context).size.height;

    deviceWidth = MediaQuery.of(context).size.width;
    // final aspectRatio = deviceWidth / deviceHeight;

    isLandscape = MediaQuery.of(context).size.width >= 1100;
    isTablet = MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 650;
  }

  double get fontSizeMultiplier {
    if (isTablet) {
      // Tablet
      return (WidgetsBinding.instance.window.physicalSize.width /
              WidgetsBinding.instance.window.devicePixelRatio) *
          .66;
    } else if (isLandscape) {
      return (WidgetsBinding.instance.window.physicalSize.width /
              WidgetsBinding.instance.window.devicePixelRatio) *
          .5;
    } else {
      return (WidgetsBinding.instance.window.physicalSize.width /
              WidgetsBinding.instance.window.devicePixelRatio) *
          .74;
    }
  }

  double fontSizeResolver(double fontSize) {
    return fontSize * fontSizeMultiplier;
  }
}
