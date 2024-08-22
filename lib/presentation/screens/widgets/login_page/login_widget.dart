import 'package:ZeeSpot/presentation/screens/pages/login_account_page.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 35,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Уже есть аккаунт?",
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: kForegroundGreyColor)),
            SizedBox(width: 10.0),
            TextButton(
              onPressed: () async {
                await Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginAccountPage();
                }));
              },
              child: Text(
                "Войти",
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontFamily: futuraLtBt),
              ),
            ),
          ]
      ),
    );
  }
}
