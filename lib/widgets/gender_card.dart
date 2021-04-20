import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98)
);

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
          style: textStyle,
        )
      ],
    );
  }
}

