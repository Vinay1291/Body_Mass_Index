import 'package:flutter/material.dart';

import '../constants.dart';



class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.text,
    required this.onPress,
  });

  final String text;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onPress,
        child: Container(
          color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          padding: EdgeInsets.only(bottom: 20.0),
          child: Center(child: Text(text, style: kLargeButtonStyle,)),
        ),
      );
  }
}
