import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginGoogleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 61,
      child: FloatingActionButton(
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
