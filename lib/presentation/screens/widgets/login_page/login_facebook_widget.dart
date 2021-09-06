import 'package:flutter/material.dart';

class LoginFacebookWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFacebookState();
}

class _LoginFacebookState extends State<LoginFacebookWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
      child: FloatingActionButton.extended(
        heroTag: "next2",
        onPressed: () {},
        label: Text(
          'Продолжить через Facebook',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        icon: Image.asset(
          'assets/icons/Facebook.png',
          height: 35,
          width: 35,
        ),
      ),
    );
  }
}