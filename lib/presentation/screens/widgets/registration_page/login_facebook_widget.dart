import 'package:flutter/material.dart';

class LoginFacebookWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFacebookState();
}

class _LoginFacebookState extends State<LoginFacebookWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 61,
      margin: EdgeInsets.fromLTRB(35, 30, 0, 0),
      child: FloatingActionButton(
        heroTag: "next5",
        onPressed: () {},
        backgroundColor: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Image.asset(
          'assets/icons/Facebook.png',
          height: 35,
          width: 35,
        ),
      ),
    );
  }
}
