import 'package:ZeeSpot/presentation/screens/pages/home_page.dart';
import 'package:ZeeSpot/presentation/screens/pages/login_page.dart';
import 'package:ZeeSpot/presentation/utils/theme.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ZeeSpot());
}

class ZeeSpot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kLightTheme,
      title: 'ZeeSpot',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //home: LoginPage(),
    );
  }
}
