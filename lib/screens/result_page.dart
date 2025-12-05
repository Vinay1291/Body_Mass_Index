import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/bottombutton.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.bmiResult, required this.bmiText, required this.bmiInterpretation,});

  final String bmiResult;
  final String bmiText;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Your Result',
                    style: kLargeTextStyle,
                  ),
                  SizedBox(height: 20.0,),
                  Expanded(
                    child: ReusableCard(
                      margin: 0.0,
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            bmiText.toUpperCase(),
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),
                          ),
                          Text(
                            bmiResult,
                            style: kBMIValueTextStyle,
                          ),
                          Column(
                            children: [
                              Text(
                                'Normal BMI Range:',
                                style: kBMILabelTextStyle,
                              ),
                              Text(
                                '18, 5-25 kg/m2',
                                style: kBMIFont20TextStyle,
                              ),
                            ],
                          ),
                          Text(
                            bmiInterpretation,
                            textAlign: TextAlign.center,
                            style: kBMIFont20TextStyle,
                          ),
                          SizedBox(
                            height: 80.0,
                            width: 260.0,
                            child: TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                                ),
                                backgroundColor: kInactiveCardColor,
                              ),
                              child: Text(
                                'Save Result',
                                style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE YOUR BMI',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
