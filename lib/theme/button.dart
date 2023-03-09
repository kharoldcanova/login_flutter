import 'package:flutter/material.dart';
import 'package:login_flutter/theme/colors.dart';

FilledButtonThemeData customfilledButtonTheme = FilledButtonThemeData(
  style: ButtonStyle(
    // elevation: MaterialStateProperty.all(5),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    foregroundColor: MaterialStateProperty.all(Colors.indigoAccent[700]),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    minimumSize: MaterialStateProperty.all<Size>(
      const Size(150, 50),
    ),
  ),
);

TextButtonThemeData customTextButton = TextButtonThemeData(
    style: ButtonStyle(
  // textStyle: MaterialStateProperty.all(
  //   const TextStyle(color: Colors.white),
  // ),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  minimumSize: MaterialStateProperty.all<Size>(
    const Size(150, 50),
  ),
));

ElevatedButtonThemeData customElevatedButton = ElevatedButtonThemeData(
  style: ButtonStyle(
    // elevation: MaterialStateProperty.all(5),
    backgroundColor: MaterialStateProperty.all(Colors.indigoAccent[700]),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    minimumSize: MaterialStateProperty.all<Size>(
      const Size(250, 50),
    ),
  ),
);

OutlinedButtonThemeData customOutlinedButton = OutlinedButtonThemeData(
    style: ButtonStyle(
  elevation: MaterialStateProperty.all(5),
  backgroundColor: MaterialStateProperty.all(Colors.indigoAccent[700]),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
  minimumSize: MaterialStateProperty.all<Size>(
    const Size(250, 50),
  ),
  side: MaterialStateProperty.all(
      const BorderSide(color: CustomColors.whitePalette)),
));
