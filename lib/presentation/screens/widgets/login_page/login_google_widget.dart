import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
bool tap = false;

class LoginGoogleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        print("tap");
      },
      child: AnimatedContainer(
        height: 61,
        padding: EdgeInsets.only(left: 44),
        margin: EdgeInsets.symmetric(horizontal: 40),
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
        duration: Duration(seconds: 1),
        child: Row(
            children: [
              SvgPicture.asset('assets/icons/Google.svg',),
              SizedBox(width: 9,),
              Text(
                'Продолжить через Google',
                style: Theme
                    .of(context)
                    .textTheme
                    .headline4,
              ),
            ],
          ),

      ),
    );
  }
}
