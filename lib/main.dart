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
        builder: (light, dark) => MaterialApp(
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
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'ZeeSpot', style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Image.asset('assets/images/MotherNature.png'),
                width: 350,
                height: 350,
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
        onPressed: () {},
        label: Text('Продолжить через Google'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
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
        onPressed: () {},
        label: Text('Продолжить через Facebook'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
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
      margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Продолжить через Apple'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        icon: Image.asset(
          'assets/icons/Apple.png',
          height: 35,
          width: 35,
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
      margin: EdgeInsets.fromLTRB(40, 10, 40, 0),
      child: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Зарегистрироваься'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
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
      alignment: AlignmentDirectional.center,
      width: 200,
      height: 30,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Уже есть аккаунт?", style: TextStyle(
            color: Colors.black,
          ),),
          TextButton(
            onPressed: () {},
            child: Text("Войти"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.black)),
          )
        ],
      ),
    );
  }
}
