import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/resubaleCode.dart';
import 'package:bmi_calculator/components/button_button.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.interparation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interparation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStylel,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusedCard(
                  Colour: kActiveCardColor,
                  ChildCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiResult.toLowerCase(),
                        style: kRuseltTextStyle,
                      ),
                      Text(
                        resultText,
                        style: kIBMTextStyle,
                      ),
                      Text(
                        interparation,
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
            ),
            ButtonButton(onTop: (){
              Navigator.pop(context);
            }, buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
