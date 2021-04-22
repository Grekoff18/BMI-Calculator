import 'package:bmi_calculator/widgets/reuseble_block.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/global_constants.dart';
import 'package:bmi_calculator/widgets/reuseble_block.dart';

class ResultPage extends StatelessWidget {
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
              child: Text(
                "Your Result",
                style: gC_titleTextStyle,
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
                    "Normal",
                    style: gC_resultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: gC_BMITextStyle,
                  ),
                  Text(
                    "Your BMI result is quite low, you should eat more!",
                    textAlign: TextAlign.center,
                    style: gC_bodyTextStyle
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
