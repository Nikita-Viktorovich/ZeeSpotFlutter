import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
class RepeatPasswordWidget extends StatelessWidget {
  const RepeatPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: TextField(
        obscureText: true,
        style: Theme.of(context).textTheme.headline4,

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          hintText: "Введите еще раз пароль",
          hintStyle: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontFamily: futuraLtBt, color: kForegroundGreyColor),
        ),
      ),

    );
  }
}
