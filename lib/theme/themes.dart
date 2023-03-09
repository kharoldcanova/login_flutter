import 'package:flutter/material.dart';
import 'package:login_flutter/theme/button.dart';
import 'package:login_flutter/theme/colors.dart';
import 'package:login_flutter/theme/inputs.dart';
import 'package:login_flutter/theme/text.dart';

// define a custom theme
ThemeData customTheme = ThemeData(
  useMaterial3: true,
  //colors
  primarySwatch: CustomColors.blueColor,
  primaryColor: CustomColors.blueColor,

  //text theme
  textTheme: customThemeText,
  //buttons theme
  filledButtonTheme: customfilledButtonTheme,
  elevatedButtonTheme: customElevatedButton,
  outlinedButtonTheme: customOutlinedButton,
  textButtonTheme: customTextButton,
  //inputs theme
  inputDecorationTheme: customInputDecoration,
  //snackbar
  // snackBarTheme: customSnackBar,
);
