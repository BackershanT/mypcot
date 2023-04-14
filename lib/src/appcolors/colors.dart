import 'package:flutter/material.dart';
import 'package:mypcot/src/appcolors/appcolor.dart';

class AppTheme {
  static final colors = AppColor();
  static ThemeData define() {
    return ThemeData(
        primaryColor: const Color(0XFFFFFFFF),
        focusColor: const Color(0XFFFFFFFF),
        scaffoldBackgroundColor: const Color(0XFFFFFFFF));
  }
}
