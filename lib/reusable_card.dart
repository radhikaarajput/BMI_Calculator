import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color
      colour; //container colour , as containers may have different colours
  final Widget cardChild; //sign of female , male images
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color(0xff1D1E33),
              borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
