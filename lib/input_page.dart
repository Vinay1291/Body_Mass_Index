import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'icon_content.dart';


const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children:[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectedGender = Gender.male;
                      setState(() {});
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      child: IconContent(icon: Icons.male, label: 'Male',),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectedGender = Gender.female;
                      setState(() {});
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                      child: IconContent(icon: Icons.female, label: 'Female',),
                    ),
                  ),
                ),
              ]
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}


