import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';

double getResponsiveFont(BuildContext context,{required double fontSize}) {
  double fontFactor = getFontFactor(context);

  double responsiveFont = fontSize * fontFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.25;

  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double getFontFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRation = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRation;
  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1200;
  } else {
    return width / 1800;
  }
}
