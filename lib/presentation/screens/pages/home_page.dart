import 'package:ZeeSpot/presentation/screens/widgets/home_page/add_challenge_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/clothing_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/food_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/plastic_container.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/plan_widget.dart';
import 'package:ZeeSpot/presentation/screens/widgets/home_page/water_container.dart';
import 'package:ZeeSpot/presentation/screens/pages/account_page.dart';
import 'package:ZeeSpot/presentation/screens/pages/usefull_page.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/notice.svg'),
          iconSize: 42,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AccountPage();
              }));
            },
            icon: SvgPicture.asset('assets/icons/user.svg'),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          switch (index) {
            case 1: {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UsefullPage();
              }));
            }   
            default: {

            }       
          }
        },
        selectedIndex: 0,
        // height: 50,
        indicatorColor: Colors.grey[200],
        destinations: <Widget>[
          NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
            ),
            label: 'Главная',
          ),
         NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/useful.svg',
            ),
            label: 'Полезное',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              'assets/icons/map.svg',
            ),
            label: 'Эко-карта',
          )
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Добро пожаловать!",
                    style: Theme.of(context).textTheme.headlineSmall,
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Kodi Burton',
                    style: Theme.of(context).textTheme.headlineLarge,
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
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 23),
                      )),
                  Spacer(),
                  AddChallengeWidget(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  PlasticContainerWidget(),
                  Spacer(),
                  WaterContainerWidget(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  FoodContainerWidget(),
                  Spacer(),
                  ClothingContainerWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
