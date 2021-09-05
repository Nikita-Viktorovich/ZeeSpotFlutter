import 'package:ZeeSpot/screens/registration.dart';
import 'package:ZeeSpot/utils/constants.dart';
import 'package:ZeeSpot/utils/theme.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ZeeSpot());
}

class ZeeSpot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      dark: ThemeData.dark(),
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) =>
          MaterialApp(
            theme: light,
            darkTheme: dark,
            title: 'ZeeSpot',
            debugShowCheckedModeBanner: false,
            home: LoginPage(),
          ),
    );
  }
}

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

class LoginGoogleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      padding: EdgeInsets.zero,
      child: FloatingActionButton.extended(
        heroTag: "next1",
        onPressed: () {},
        label: Text(
          'Продолжить через Google',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        icon: Image.asset(
          'assets/icons/Google.png',
          width: 35,
          height: 35,
        ),
      ),
    );
  }
}

class LoginFacebookWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFacebookState();
}

class _LoginFacebookState extends State<LoginFacebookWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
      child: FloatingActionButton.extended(
        heroTag: "next2",
        onPressed: () {},
        label: Text(
          'Продолжить через Facebook',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        icon: Image.asset(
          'assets/icons/Facebook.png',
          height: 35,
          width: 35,
        ),
      ),
    );
  }
}

class LoginAppleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginAppleState();
}

class _LoginAppleState extends State<LoginAppleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: FloatingActionButton.extended(
        heroTag: "next3",
        onPressed: () {},
        label: Text(
          'Продолжить через Apple',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        backgroundColor: Theme
            .of(context)
            .backgroundColor,
        icon: Image.asset(
          'assets/icons/Apple.png',
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class UserRegistration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 35, 40, 0),
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Зарегистрироваться',
            style: Theme
                .of(context)
                .textTheme
                .headline4!
                .copyWith(fontFamily: futuraLtBt, color: kForegroundColor)),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
              TextButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegistrationPage();
                  }));
                },
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
