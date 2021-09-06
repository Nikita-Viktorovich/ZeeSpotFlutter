
import 'package:flutter/material.dart';

class LoginAppleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginAppleState();
}

class _LoginAppleState extends State<LoginAppleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: FloatingActionButton.extended(
        heroTag: "next3",
        onPressed: () {},
        label: Text(
          'Продолжить через Apple',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        icon: Image.asset(
          'assets/icons/Apple.png',
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}