import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_apple_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_facebook_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_google_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/login_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/login_page/user_registration.dart';
import 'package:ZeeSpot/presentation/screens/widgets/registration_page/myButton.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(

          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          /*appBar: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: AppBar(
              //backgroundColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle.light,
            ),
          ),*/
          body: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 136,
                    height: 42,
                    child: Text(
                      'ZeeSpot',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 44),
                      child: SvgPicture.asset(
                        'assets/images/Mother_Nature.svg',
                      ),
                    ),
                  ),
                  LoginGoogleWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  LoginFacebookWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  LoginAppleWidget(),
                  UserRegistration(),
                  LoginWidget(),
                ]),
          ),
        ),
      ),
    );
  }
}

/* SVG картинки
* stateless виджеты
* файл с константами для отуступов
* убрать размеры контейнеров и оставить отступы
* сочетания клавиш
* изменить навигацию pop на пуш
* */
