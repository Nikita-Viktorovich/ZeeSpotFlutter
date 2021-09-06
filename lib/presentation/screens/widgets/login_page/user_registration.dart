
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
      ),
    );
  }
}