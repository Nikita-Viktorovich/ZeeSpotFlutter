import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/create_account_button.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/input_email_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/input_name_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/input_password_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_apple_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_facebook_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_google_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/repeat_password_widget.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
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
                    margin: EdgeInsets.fromLTRB(25, 65, 0, 0),
                    child: IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 65, 0, 0),
                    height: 39,
                    width: 202,
                    child: Text(
                      'Регистрация',
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
                margin: EdgeInsets.fromLTRB(35, 30, 0, 0),
                child: Text(
                  "Имя",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontFamily: futuraLtBt),
                ),
              ),
              InputNameWidget(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(35, 20, 0, 0),
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
                margin: EdgeInsets.fromLTRB(35, 20, 0, 0),
                child: Text(
                  "Пароль",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontFamily: futuraLtBt),
                ),
              ),
              InputPasswordWidget(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(35, 20, 0, 0),
                child: Text(
                  "Повторите пароль",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontFamily: futuraLtBt),
                ),
              ),
              RepeatPasswordWidget(),

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
              CreateAccountButton(),
              LoginWidget(),
            ],
          ),
        ));
  }
}
