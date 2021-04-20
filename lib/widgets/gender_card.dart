import 'package:flutter/material.dart';
// Constant from this file starting with gC_
import '../constants/global_constants.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key key,
    @required this.genderType,
    @required this.genderIcon
  }) : super(key: key);

  final String genderType;
  final Icon genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        genderIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderType,
          style: gC_textStyle,
        )
      ],
    );
  }
}

