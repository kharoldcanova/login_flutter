import 'package:flutter/material.dart';
import 'package:login_flutter/theme/colors.dart';
import 'package:login_flutter/theme/themes.dart';

SnackBarThemeData customSnackBar = SnackBarThemeData(
    backgroundColor: CustomColors.whitePalette,
    contentTextStyle: customTheme.textTheme.bodySmall!.merge(const TextStyle(
      color: CustomColors.blueColor,
    )));
