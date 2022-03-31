import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uome2/core/themes/themes.dart';
class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: AppColors.lightGrey,
      ),
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: AppColors.background,
      textTheme: AppTextStyle.textTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
