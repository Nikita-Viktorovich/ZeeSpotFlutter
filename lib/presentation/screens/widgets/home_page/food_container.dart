import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FoodContainerWidget extends StatelessWidget {
  const FoodContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: 156,
      decoration: BoxDecoration(
          color: kBackgroundFood,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 24,
              spreadRadius: 0,
              offset: Offset(0, 2),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Image.asset('assets/images/Еда.png')),
          SizedBox(
            height: 8,
          ),
          Text(
            'Еда',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            '10/20',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
