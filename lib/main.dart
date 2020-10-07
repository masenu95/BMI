import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'screen/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Hexcolor('0a0e21'),
        scaffoldBackgroundColor: Hexcolor('0a0e21'),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/result': (context) => Result(),
      },
    );
  }
}
