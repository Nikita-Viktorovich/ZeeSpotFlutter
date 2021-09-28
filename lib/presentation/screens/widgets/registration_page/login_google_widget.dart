import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginGoogleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 24,
            offset: Offset(0, 8), // changes position of shadow
          ),
        ],
      ),
      child: FloatingActionButton(
        elevation: 0,
        heroTag: "next4",
        onPressed: () {},
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: SvgPicture.asset(
          'assets/icons/Google.svg',
          width: 35,
          height: 35,
        ),
      ),
    );
  }
}
