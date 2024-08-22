import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ZeeSpot/presentation/screens/pages/statistic_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
                padding: EdgeInsets.only(right: 36),
                child: IconButton.outlined(
                  // constraints: const BoxConstraints(), // override default min size of 48px
                  // style: const ButtonStyle(
                  //   tapTargetSize: MaterialTapTargetSize.shrinkWrap, // the '2023' part
                  //   side:WidgetStatePropertyAll(BorderSide(color: Colors.red))
                  // ),
                  // color: Colors.red,
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/user_crossed.svg'),
                )),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    width: 190.0,
                    height: 190.0,
                    decoration: new BoxDecoration(color: Color(0xFFF5F3F3), shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: Offset(0, 8),
                        blurRadius: 24,
                      )
                    ]),
                    child: Image.asset('assets/images/sticker 1.png'))
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Pasto Gasto", style: Theme.of(context).textTheme.headlineLarge)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 32,
                      child: FloatingActionButton.extended(
                        elevation: 0,
                        backgroundColor: Theme.of(context).primaryColor,
                        onPressed: () {},
                        label: Text("Эко-новичок", style: Theme.of(context).textTheme.headlineSmall),
                        icon: SvgPicture.asset(
                          'assets/icons/Egg.svg',
                          width: 20,
                        ),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Text("1000", style: Theme.of(context).textTheme.headlineLarge),
                      Text("Очков", style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("5", style: Theme.of(context).textTheme.headlineLarge),
                      Text("Дней подряд", style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ])),
            Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 24, color: Colors.black.withOpacity(0.15))],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffF6F7FB),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 36, right: 36, bottom: 36),
                    children: [
                      ListTile(
                        leading: IconButton.outlined(
                          icon: SvgPicture.asset('assets/icons/BPM Monitor.svg'),
                          onPressed: () {},
                          constraints: const BoxConstraints(),
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                        ),
                        title: Text("Статистика"),
                        subtitle: Text("Information, Analysis, Data"),
                        trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                        contentPadding: EdgeInsets.all(0),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return StatisticPage();
                          }));
                        },
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                      ListTile(
                        leading: IconButton.outlined(
                          icon: SvgPicture.asset('assets/icons/Alert.svg'),
                          onPressed: () {},
                          constraints: const BoxConstraints(),
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                        ),
                        title: Text("Уведомления"),
                        subtitle: Text("Mute, Push, Email"),
                        trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                      ListTile(
                        leading: IconButton.outlined(
                          icon: SvgPicture.asset('assets/icons/Toggle On.svg'),
                          onPressed: () {},
                          constraints: const BoxConstraints(),
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                        ),
                        title: Text("Настройки"),
                        subtitle: Text("Security, Privacy"),
                        trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                      ListTile(
                        leading: IconButton.outlined(
                          icon: SvgPicture.asset('assets/icons/Theatre.svg'),
                          onPressed: () {},
                          constraints: const BoxConstraints(),
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            side: WidgetStatePropertyAll(BorderSide(color: Colors.grey)),
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                        ),
                        title: Text("Имя пользователя"),
                        subtitle: Text("@egdafaqchillinwiththesquad"),
                        trailing: Icon(Icons.arrow_forward_ios,size: 16,),
                        contentPadding: EdgeInsets.all(0),
                      )
                    ],
                  ))
            ]))
          ],
        ));
  }
}
