import 'package:ZeeSpot/presentation/screens/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
          alignment: Alignment.topCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 70, 0, 0),
                child: FloatingActionButton(

                  backgroundColor: Colors.white38,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                  child: Icon(IconData(62832, fontFamily: 'MaterialIcons')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 70, 0, 0),
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
            ],
          ),
        ));
  }
}
