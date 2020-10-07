import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final kTextStyle = TextStyle(
  color: Hexcolor('8d8e98'),
  letterSpacing: 1,
);

const kNumberStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kResultTittle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const kResultComment = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.green,
  fontSize: 22.0,
);

const kResults = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100,
);

const BNavHeight = 80.0;
const BNavColor = '8D2663';
var cardColor = '1d1e33';
const inactiveCardColour = '1d1e33';
const activeCardColour = '111328';

var sliderHeight = 160;
var weight = 40;
var age = 18;

class BottomBtn extends StatelessWidget {
  BottomBtn({@required this.btnText, @required this.onPressed});
  final String btnText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Hexcolor(BNavColor),
      child: Container(
        height: BNavHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
