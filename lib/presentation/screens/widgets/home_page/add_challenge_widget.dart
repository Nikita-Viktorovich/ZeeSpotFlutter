import 'package:ZeeSpot/presentation/screens/pages/adding_challenge_page.dart';
import 'package:ZeeSpot/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class AddChallengeWidget extends StatelessWidget {
  const AddChallengeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 24,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: FloatingActionButton.extended(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              useRootNavigator: true,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return AddChallengePage();
              });
        },
        label: Row(
          children: [
            Text(
              'Добавить',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: kForegroundDarkBlueColor,
                  ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.add_circle,
              color: kForegroundDarkBlueColor,
            ),
          ],
        ),
        icon: Container(),
      ),
    );
  }
}
