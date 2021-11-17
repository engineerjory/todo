import 'package:flutter/material.dart';

class MyThemeData {
  static ThemeData lightTheme = new ThemeData(
    primaryColor: Color(0xff5D9CEC),
    accentColor: Color(0xffDFECDB),
    // colorScheme:
    //     ColorScheme.fromSwatch().copyWith(secondary: Color(0xffDFECDB)),
    scaffoldBackgroundColor: Color.fromRGBO(223, 236, 219, 1.0),
    appBarTheme: AppBarTheme(),
    textTheme: TextTheme(
      bodyText1: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
    ),
  );

  static ThemeData darkTheme = new ThemeData(
    primaryColor: Color(0xff5D9CEC),
    accentColor: Color(0xff060E1EFF),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Color(0xff060e1e)),
    scaffoldBackgroundColor: Color(0xff060E1E),
    textTheme: TextTheme(
      bodyText1: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
    ),
  );
}
