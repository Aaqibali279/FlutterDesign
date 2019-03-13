import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/home.dart';
import 'package:flutter_demo/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight list mockup app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor:MyColors.instance.primaryColor,
          primaryColor: MyColors.instance.primaryColor,
          fontFamily: 'Oxygen'),
      home: MyHomePage(),
    );
  }
}















