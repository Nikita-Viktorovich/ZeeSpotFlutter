import 'package:ZeeSpot/presentation/screens/widgets/login_account_page/input_email_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_account_page/input_password_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_account_page/login_account_button.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_apple_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_facebook_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_google_widget.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class LoginAccountPage  extends StatelessWidget {
  const LoginAccountPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(lenStart, heightStart, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(88, heightStart, 0, 0),
                    height: 39,
                    width: 202,
                    child: Text(
                      'Войти',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 30),
                    ),
                  ),
                  //Container()
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(35, 40, 0, 0),
                child: Text(
                  "Email",
                  style: Theme.of(context)
                      .textTheme
                      .headline4,
                ),
              ),
              InputEmailWidget(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(35, 30, 0, 0),
                child: Text(
                  "Пароль",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontFamily: futuraLtBt),
                ),
              ),
              InputPasswordWidget(),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginFacebookWidget(),
                  SizedBox(width: 25),
                  LoginGoogleWidget(),
                  SizedBox(width: 25),
                  LoginAppleWidget(),
                ],
              ),
              LoginAccountButton(),
              LoginWidget(),
            ],
          ),
        ));
  }
}
