import 'package:flutter/material.dart';

class LoginGoogleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 61,
      margin: EdgeInsets.fromLTRB(26, 30, 0, 0),
      padding: EdgeInsets.zero,
      child: FloatingActionButton(
        heroTag: "next4",
        onPressed: () {},
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Image.asset(
          'assets/icons/Google.png',
          width: 35,
          height: 35,
        ),
      ),
    );
  }
}
