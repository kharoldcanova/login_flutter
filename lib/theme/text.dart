import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_flutter/theme/colors.dart';

TextTheme customThemeText = GoogleFonts.poppinsTextTheme(
  TextTheme(
    headlineLarge: TextStyle(
      color: CustomColors.whitePalette[700],
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: CustomColors.whitePalette[700],
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: CustomColors.whitePalette[700],
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: CustomColors.whitePalette[700],
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: CustomColors.whitePalette[700],
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      color: CustomColors.whitePalette[500],
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      color: CustomColors.whitePalette[500],
    ),
    bodyMedium: TextStyle(
      color: CustomColors.whitePalette[500],
    ),
    bodySmall: TextStyle(
      color: CustomColors.whitePalette[500],
    ),
  ),
);
