import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uome2/core/themes/themes.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.background,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
        color: AppColors.lightGrey,
      ),
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: AppTextStyle.textTheme,
    );
  }
}
