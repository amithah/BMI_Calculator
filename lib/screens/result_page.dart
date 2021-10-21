import 'dart:ui';

import 'package:bmicalculator_app/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.bmiInterpretation});
  final String bmiResult;
  final String resultText;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Result',
                  textAlign: TextAlign.center,
                  style: kResultTitleStyle,
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              mycolor: kActiveColor,
              carchild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kResultNumStyle,
                  ),
                  Text(
                    resultText,
                    style: kResultTextStyleGreen,
                  ),
                  const Text(
                    ' Healthy BMI range: 18.5 - 25',
                    style: kLabelTextStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kResultAdviceStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            flex: 6,
          ),
          Expanded(
            flex: 2,
            child: BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
