import 'package:flutter/material.dart';

class LoginGoogleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      padding: EdgeInsets.zero,
      child: FloatingActionButton.extended(
        heroTag: "next1",
        onPressed: () {},
        label: Text(
          'Продолжить через Google',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        icon: Image.asset(
          'assets/icons/Google.png',
          width: 35,
          height: 35,
        ),
      ),
    );
  }
}
