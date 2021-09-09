import 'package:flutter/material.dart';

class LoginAppleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 24,
            offset: Offset(0, 8), // changes position of shadow
          ),
        ],
      ),
      child: FloatingActionButton.extended(
        elevation: 0,
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
      ),
    );
  }
}