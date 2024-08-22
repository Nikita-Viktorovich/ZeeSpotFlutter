import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginAppleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {},
      child: Container(
        height: 61,
        padding: EdgeInsets.only(left: 20),
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
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
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/Apple.svg',
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              'Продолжить через Apple',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
