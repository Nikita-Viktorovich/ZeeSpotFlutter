import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class InputNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: TextField(
        style: Theme.of(context).textTheme.headlineMedium,
        decoration: InputDecoration(
          fillColor: Colors.black.withOpacity(0.06),
          //filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          hintText: "Введите имя",
          hintStyle: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontFamily: futuraLtBt, color: kForegroundGreyColor),
        ),
      ),
    );
  }
}
