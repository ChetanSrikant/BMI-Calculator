import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_page.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({Key? key}) : super(key: key);

  ResultPage(
      {required this.interpretation,
      required this.bmiResults,
      required this.resultText});

  final String interpretation;
  final String bmiResults;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(
                    bmiResults,
                    style: kResult,
                  ),
                  Text(
                    interpretation,
                    style: kBodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () => Navigator.pop(context), bottomTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
