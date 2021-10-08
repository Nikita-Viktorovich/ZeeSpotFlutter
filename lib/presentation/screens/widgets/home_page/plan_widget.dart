import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 24,
              offset: Offset(0, 8),
              spreadRadius: 0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Советы',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Color(0xFF313152),
                    )),
            SizedBox(
              height: 5,
            ),
            Text(
              'План на сегодня!',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontFamily: futuraBkBT,
                    color: Colors.white,
                    fontSize: 30,
                  ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
              ),
            )
          ],
        ),
      ),
    );
  }
}
