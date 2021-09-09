import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_apple_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_facebook_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_google_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/user_registration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 136,
                height: 42,
                child: Text(
                  'ZeeSpot',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline1,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 55, 0, 30),
                alignment: Alignment.center,
                child: Image.asset('assets/images/MotherNature.png'),
                width: 310,
                height: 240,
              ),
              //LoginGoogleWidget(),
              LoginGoogleWidget(),
              LoginFacebookWidget(),
              LoginAppleWidget(),
              UserRegistration(),
              LoginWidget(),
            ]),
      ),
    );
  }
}

/* SVG картинки
* stateless виджеты
* файл с константами для отуступов
* убрать размеры контейнеров и оставить отступы
* сочетания клавиш
* */