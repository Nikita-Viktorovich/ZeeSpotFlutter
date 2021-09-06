import 'package:flutter/material.dart';

class LoginAppleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginAppleState();
}

class _LoginAppleState extends State<LoginAppleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 61,
      margin: EdgeInsets.fromLTRB(26, 30, 0, 0),
      child: FloatingActionButton(
        heroTag: "next6",
        onPressed: () {},
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Image.asset(
          'assets/icons/Apple.png',
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}