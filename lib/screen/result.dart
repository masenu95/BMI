import 'package:calcu/includes/reusecard.dart';
import 'package:flutter/material.dart';
import '../includes/constant.dart';

class Result extends StatelessWidget {
  Result(
      {this.title,
      @required this.bmi,
      @required this.comments,
      @required this.descr});

  final String title;
  final String bmi;
  final String comments;
  final String descr;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kResultTittle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseCard(
              colour: cardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    comments,
                    style: kResultComment,
                  ),
                  Text(
                    bmi,
                    style: kResults,
                  ),
                  Text(
                    descr,
                    style: kTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomBtn(
            btnText: 'Re-Calculate',
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
