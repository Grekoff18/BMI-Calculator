import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/reuseble_block.dart';
import 'widgets/gender_card.dart';

final activeCardColor = Color(0xFF1D1E33);
final inactiveCardColor = Color(0xFF111328);
final bottomContainerHeight = 80.0;
final bottomContainerColor = Color(0xFFEB1555);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
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
                    blockColor: selectedGender == GenderType.male ? activeCardColor : inactiveCardColor,
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
                    blockColor: selectedGender == GenderType.female ? activeCardColor : inactiveCardColor,
                  ),
                ),
              ],
            )
          ),
          Expanded(
            child: ReusebleBlock(
              blockColor: Color(0xFF1D1E33)
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleBlock(
                      blockColor: Color(0xFF1D1E33)
                  ),
                ),
                Expanded(
                  child: ReusebleBlock(
                      blockColor: Color(0xFF1D1E33)
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

