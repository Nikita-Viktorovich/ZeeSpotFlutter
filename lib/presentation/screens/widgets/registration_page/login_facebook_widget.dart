import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginFacebookWidget extends StatelessWidget {
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
        child: SvgPicture.asset(
          'assets/icons/Facebook.svg',
          height: 35,
          width: 35,
        ),
      ),
    );
  }
}
