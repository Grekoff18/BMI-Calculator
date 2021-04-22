import 'package:bmi_calculator/widgets/reuseble_block.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/global_constants.dart';
import 'package:bmi_calculator/widgets/reuseble_block.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpritate,
  });

  final String bmiResult;
  final String resultText;
  final String interpritate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your Result",
                style: gC_titleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusebleBlock(
              blockColor: gC_activeCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: gC_resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: gC_BMITextStyle,
                  ),
                  Text(
                    interpritate,
                    textAlign: TextAlign.center,
                    style: gC_bodyTextStyle
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
