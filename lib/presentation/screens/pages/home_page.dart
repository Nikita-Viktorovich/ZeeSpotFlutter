import 'package:ZeeSpot/presentation/screens/widgets/home_page/clothing_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/food_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/plastic_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/plain_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/water_container.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_alert_outlined,
                      size: 40,
                    )),
                SizedBox(
                  width: 250,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_outlined,
                      size: 45,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Добро пожаловать!",
                  style: Theme.of(context).textTheme.headline5,
                )),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Kodi Burton',
                  style: Theme.of(context).textTheme.headline1,
                )),
            SizedBox(
              height: 20,
            ),
            PlainWidget(),
            SizedBox(height: 15,),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Челленджи',
                  style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
                )),
            SizedBox(height: 15,),
            Row(
              children: [
                PlasticContainerWidget(),
                SizedBox(width: 30,),
                WaterContainerWidget(),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                FoodContainerWidget(),
                SizedBox(width: 30,),
                ClothingContainerWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
