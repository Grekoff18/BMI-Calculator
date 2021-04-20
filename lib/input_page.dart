import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/reuseble_block.dart';
import 'widgets/gender_card.dart';
// Constant from this file starting with gC_
import 'constants/global_constants.dart';

enum GenderType {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  double height = 180.0;
  double weight = 70.0;
  int age = 18;

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
              children: [
                Expanded(
                  child: ReusebleBlock(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    childWidget: GenderCard(
                      genderType: "MALE",
                      genderIcon: Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                    ),
                    blockColor: selectedGender == GenderType.male
                      ? gC_activeCardColor
                      : gC_inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusebleBlock(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    childWidget: GenderCard(
                      genderType: "FEMALE",
                      genderIcon: Icon(
                        FontAwesomeIcons.venus,
                        size: 80.0,
                      ),
                    ),
                    blockColor: selectedGender == GenderType.female
                      ? gC_activeCardColor
                      : gC_inactiveCardColor,
                  ),
                ),
              ],
            )
          ),
          Expanded(
            child: ReusebleBlock(
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: gC_textStyle
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: gC_numberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: gC_textStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double sliderValue) {
                        setState(() {
                          height = double.parse(sliderValue.toStringAsFixed(2));
                        });
                      },
                    ),
                  )
                ],
              ),
              blockColor: Color(0xFF1D1E33)
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleBlock(
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: gC_textStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: gC_numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconBtn(
                              icon: FontAwesomeIcons.minus,
                              onClick: () {
                                setState(() {
                                  if (weight > 0) weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0
                            ),
                            RoundIconBtn(
                              icon: FontAwesomeIcons.plus,
                              onClick: () {
                                setState(() {
                                  if (weight < 350) weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    blockColor: Color(0xFF1D1E33)
                  ),
                ),
                Expanded(
                  child: ReusebleBlock(
                    blockColor: Color(0xFF1D1E33),
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: gC_textStyle,
                        ),
                        Text(
                          age.toString(),
                          style: gC_numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconBtn(
                              icon: FontAwesomeIcons.minus,
                              onClick: () {
                                setState(() {
                                  if (age > 0) age--;
                                });
                              },
                            ),
                            SizedBox(
                                width: 10.0
                            ),
                            RoundIconBtn(
                              icon: FontAwesomeIcons.plus,
                              onClick: () {
                                setState(() {
                                  if (age < 200) age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconBtn extends StatelessWidget {
  RoundIconBtn({@required this.icon,@required this.onClick});

  final IconData icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onClick,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}


