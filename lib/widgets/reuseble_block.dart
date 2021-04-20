import 'package:flutter/material.dart';

class ReusebleBlock extends StatelessWidget {
  const ReusebleBlock({
    Key key,
    @required this.blockColor,
    this.childWidget,
    this.onPress
  }) : super(key: key);

  final Color blockColor;
  final Widget childWidget;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: blockColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}