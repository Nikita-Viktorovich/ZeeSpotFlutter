import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap');
      },

      child: Container(
        height: 61,
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        //padding: EdgeInsets.only(left: 59),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/Google.svg', height: 35,),
              SizedBox(width: 5,),
              Text(
                'Продолжить через Google',
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
