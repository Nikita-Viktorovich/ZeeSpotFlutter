import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: IconButton(
        onPressed: () {

        },
        icon: SvgPicture.asset('assets/icons/home.svg', width: 42,),
      ),

    );
  }
}
