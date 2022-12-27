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
        color: AppColor.primaryDarkGrey,
      ),
      // Button theme

      // elevated button theme

      // default font family
      fontFamily: GoogleFonts.shareTech().fontFamily,

      // Text theme (2021)
      // for text theme more info go to this link
      // https://lh3.googleusercontent.com/Yvngs5mQSjXa_9T4X3JDucO62c5hdZHPDa7qeRH6DsJQvGr_q7EBrTkhkPiQd9OeR1v_Uk38Cjd9nUpP3nevDyHpKWuXSfQ1Gq78bOnBN7sr=s0
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: AppColor.whiteColor),
        titleMedium: TextStyle(color: AppColor.primaryColor),
        titleSmall: TextStyle(color: AppColor.whiteColor),
        // bodyMedium is what normal text applies
      )

      // input decoration theme (text form field)
      );
}
