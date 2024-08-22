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
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: IconButton(
                              splashRadius: 1,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios),
                            ),
                          ),
                          SizedBox(width: 40,),
                          Container(
                            child: Text(
                              'Регистрация',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
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
                              .headlineMedium!
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
                              .headlineMedium,
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
                              .headlineMedium!
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
                              .headlineMedium!
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
                ),
              ),
            )),
      ),
    );
  }
}
