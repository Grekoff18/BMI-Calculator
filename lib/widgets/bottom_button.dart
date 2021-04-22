import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/global_constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.title,
    @required this.onTap
  });

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: gC_largeButtonTextStyle,
          ),
        ),
        color: gC_bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: gC_bottomContainerHeight,
      ),
    );
  }
}