import 'package:ZeeSpot/presentation/screens/pages/login_page.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_apple_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_facebook_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/login_google_widget.dart';
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
                    margin: EdgeInsets.fromLTRB(23, 70, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      icon: Icon(IconData(62832, fontFamily: 'MaterialIcons')),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 70, 0, 0),
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
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  "Зарегистрируйтесь через один из вариантов",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontFamily: futuraLtBt, color: kForegroundGreyColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LoginFacebookWidget(),
                  LoginGoogleWidget(),
                  LoginAppleWidget(),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(35, 40, 0, 0),
                child: Text(
                  "Имя",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontFamily: futuraLtBt),
                ),
              ),

            ],
          ),
        ));
  }
}
