import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginAppleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 61,
      child: FloatingActionButton(
        heroTag: "next6",
        onPressed: () {},
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: SvgPicture.asset(
          'assets/icons/Apple.svg',
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}