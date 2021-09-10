import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginGoogleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      padding: EdgeInsets.zero,
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
        icon: SvgPicture.asset(
          'assets/icons/Google.svg',
          width: 35,
          height: 35,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
      ),
    );
  }
}
