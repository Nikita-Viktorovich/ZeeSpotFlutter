import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class InputNameWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputNameState();
}

class _InputNameState extends State<InputNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          hintText: "Введите имя",
          hintStyle: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontFamily: futuraLtBt, color: kForegroundGreyColor),
        ),
      ),
    );
  }
}
