import 'package:flutter/material.dart';
import 'screens/Input_Page.dart';
import 'screens/results_page.dart';

void main() {
  runApp(IbmCalculator());
}

class IbmCalculator extends StatelessWidget {
  const IbmCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/first': (context) => ResultPage(),
      // ResultPage},
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
