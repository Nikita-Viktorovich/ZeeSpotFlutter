import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 35,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Уже есть аккаунт?",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kForegroundGreyColor)),
            SizedBox(width: 10.0),
            TextButton(
              onPressed: () {},
              child: Text(
                "Войти",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontFamily: futuraLtBt),
              ),
            ),
          ]
      ),
    );
  }
}
