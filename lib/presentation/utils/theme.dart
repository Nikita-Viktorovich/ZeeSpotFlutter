import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

final kLightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: Color(0xFF9998CF),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        // fontFamily: futuraBkBT,
        fontSize: 14.0,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        // fontFamily: futuraBkBT,
        fontSize: 20.0,
        color: kForegroundGreyColor,
      ),
      headlineLarge: TextStyle(
        // fontFamily: futuraHvBt,
        color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black));
