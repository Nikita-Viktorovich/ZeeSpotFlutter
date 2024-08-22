import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UsefullPage extends StatefulWidget {
  const UsefullPage({super.key});

  @override
  State<UsefullPage> createState() => _UsefullPageState();
}

class _UsefullPageState extends State<UsefullPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Container(
                height: 55,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7FB),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: TabBar.secondary(
                    padding: EdgeInsets.all(0),
                    controller: _tabController,
                    dividerHeight: 0,
                    indicatorPadding: EdgeInsets.all(1),
                    indicatorWeight: 0,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff9998CF),
                    ),
                    tabs: [
                      Tab(text: 'Статьи'),
                      Tab(text: 'Мероприятия'),
                    ])),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Популярные", style: Theme.of(context).textTheme.headlineMedium),
                        Spacer(),
                        Text("Посмотреть все", style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.access_alarm, color: Colors.red),
                          Column(
                            children: [
                              Text("Популярные", style: Theme.of(context).textTheme.headlineMedium),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.red),
                        ],
                      ),
                    )
                  ],
                ),
                Center(
                  child: Text(
                    "It's rainy here",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ))
          ])),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          switch (index) {
            case 0:
              {
                Navigator.pop(context);
              }
            default:
              {}
          }
        },
        selectedIndex: 1,
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
    );
  }
}
