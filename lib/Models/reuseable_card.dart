import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;

  ReuseableCard(
      {required this.colour, this.childCard = const SizedBox.expand()});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
      child: childCard,
    );
  }
}