import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddChallengePage extends StatelessWidget {
  const AddChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2, //
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kBackgroundAddedChallenge,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF9998CF).withOpacity(0.25),
              blurRadius: 40,
              spreadRadius: 0,
              offset: Offset(0, 20),
            )
          ]),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Victory.svg'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Добавить новый челлендж',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 18.0,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Будь продуктивным сегодня,\nсоздай экологичный мир вокруг себя!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.black.withOpacity(0.5),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  fillColor: Colors.black.withOpacity(0.06),
                  focusColor: Colors.pink,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  hintText: 'Введите текст...',
                  hintStyle: Theme.of(context).textTheme.headline4,
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
