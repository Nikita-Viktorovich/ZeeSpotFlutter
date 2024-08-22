import 'package:ZeeSpot/presentation/screens/pages/home_page.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
class LoginAccountButton extends StatelessWidget {
  const LoginAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 61,
      margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
      child: FloatingActionButton.extended(
        elevation: 0,
        onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        },
        label: Text('Войти',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontFamily: futuraLtBt, color: kForegroundColor, fontSize: 16)),
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
