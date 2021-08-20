import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  final Function()? onPress;

  ReuseableCard(
      {required this.colour, this.childCard = const SizedBox.expand(), this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
        child: childCard,
      ),
    );
  }
}