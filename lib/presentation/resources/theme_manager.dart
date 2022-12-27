import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColor.primaryColor,

    // ripple color
    // splashColor:
    // will be used in case of disabled button for example
    // accentColor: AppColors.neutralDark, // deprecated
    // card view theme
    // App bar theme
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: AppColor.primaryColor,
    ),
    // Button theme

    // elevated button theme

    // default font family
    fontFamily: GoogleFonts.shareTech().fontFamily,

    // Text theme

    // input decoration theme (text form field)
  );
}
