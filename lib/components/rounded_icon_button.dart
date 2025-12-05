import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.iconData,
    required this.onPress,
  });

  final IconData iconData;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(iconData, size: 30.0, weight: 900),
    );
  }
}
