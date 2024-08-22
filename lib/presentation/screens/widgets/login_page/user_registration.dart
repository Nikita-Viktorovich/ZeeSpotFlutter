import 'package:ZeeSpot/presentation/screens/pages/registration_page.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class UserRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 61,
      margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
      child: FloatingActionButton.extended(
        elevation: 0,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RegistrationPage();
          }));
        },
        label: Text('Зарегистрироваться',
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontFamily: futuraLtBt, color: kForegroundColor)),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
      ),
    );
  }
}