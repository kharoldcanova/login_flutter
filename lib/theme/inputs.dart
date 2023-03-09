import 'package:flutter/material.dart';
import 'package:login_flutter/theme/colors.dart';

InputDecorationTheme customInputDecoration = InputDecorationTheme(
  labelStyle: const TextStyle(
    color: CustomColors.whitePalette,
  ),
  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
  hintStyle: TextStyle(
    color: CustomColors.blueColor[400],
    fontWeight: FontWeight.w100,
    fontSize: 16,
  ),
  filled: true,
  fillColor: CustomColors.whitePalette,
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: CustomColors.whitePalette),
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  ),
);
