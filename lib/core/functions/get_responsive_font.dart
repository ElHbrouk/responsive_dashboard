import 'dart:developer';

import 'package:flutter/material.dart';

double getResponsiveFont(BuildContext context, {required double fontSize}) {
  double fontFactor = getFontFactor(context);

  double responsiveFont = fontSize * fontFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.25;

  return responsiveFont.clamp(lowerLimit, upperLimit);
}

double getFontFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
