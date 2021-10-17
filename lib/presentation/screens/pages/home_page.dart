import 'package:ZeeSpot/presentation/screens/widgets/home_page/add_challenge_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/clothing_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/food_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/plastic_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/plan_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/water_container.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/useful.svg',
                ),
                label: 'Полезное',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/map.svg',
                ),
                label: 'Эко-карта',
              )
            ],
            selectedItemColor: const Color(0xFF2E2E2E),
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/notice.svg'),
                        iconSize: 42,
                      ),
                      SizedBox(
                        width: 240,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/user.svg'),
                      ),
                    ],
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
                    height: 10,
                  ),
                  PlanWidget(),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Челленджи',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 23),
                          )),
                      SizedBox(
                        width: 80,
                      ),
                      AddChallengeWidget(),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      PlasticContainerWidget(),
                      SizedBox(
                        width: 30,
                      ),
                      WaterContainerWidget(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      FoodContainerWidget(),
                      SizedBox(
                        width: 30,
                      ),
                      ClothingContainerWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
