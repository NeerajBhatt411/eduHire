import 'package:flutter/material.dart';

// Base sizes (iPhone X)
const double baseHeight = 812;
const double baseWidth = 375;

/// Utility class for responsive design
class ResponsiveUtil {
  ///  Responsive Height
  static double screenHeight(BuildContext context, double value) {
    return MediaQuery.of(context).size.height * (value / baseHeight);
  }

  ///  Responsive Width
  static double screenWidth(BuildContext context, double value) {
    return MediaQuery.of(context).size.width * (value / baseWidth);
  }

  ///  Responsive Font Size (based on width)
  static double responsiveFont(BuildContext context, double value) {
    return MediaQuery.of(context).size.width * (value / baseWidth);
  }
}
