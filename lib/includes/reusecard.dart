import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard({@required this.colour, this.childWidget});
  final String colour;
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Hexcolor(colour),
      ),
    );
  }
}
