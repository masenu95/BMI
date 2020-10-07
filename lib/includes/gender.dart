import 'package:flutter/material.dart';
import 'constant.dart';

class Genders extends StatelessWidget {
  Genders({@required this.genderName, @required this.fontIcon});
  final String genderName;
  final IconData fontIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          genderName,
          style: kTextStyle,
        ),
      ],
    );
  }
}
