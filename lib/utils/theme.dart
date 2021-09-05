import 'package:ZeeSpot/utils/constants.dart';
import 'package:flutter/material.dart';

final kLightTheme = ThemeData.light().copyWith(
    primaryColor: Color(0xFF9998CF),
    accentColor: Colors.black,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      headline4: TextStyle(
        fontFamily: futuraBkBT,
        fontSize: 14.0,
        color: Colors.black,
      ),
      headline1: TextStyle(
        fontFamily: futuraHvBt,
        color: Colors.black,
        fontSize: 35.0,
      ),
    ));
