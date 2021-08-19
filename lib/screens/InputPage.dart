import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Models/reuseable_card.dart';
import 'package:bmi_calculator/Models/icon_content.dart';

const BottomContainerHeight = 60.0;
const ContainerColor = Color(0xFF1D1F33);
const BottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseableCard(
                    colour: ContainerColor,
                    childCard: IconContent(icon: FontAwesomeIcons.mars,label: "Male",),
                  )),
                  Expanded(child: ReuseableCard(colour: ContainerColor,
                  childCard: IconContent(icon: FontAwesomeIcons.venus,label: "Female",),)),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(colour: ContainerColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReuseableCard(colour: ContainerColor)),
                  Expanded(
                    child: ReuseableCard(colour: ContainerColor),
                  ),
                ],
              ),
            ),
            Container(
              color: BottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              height: BottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Calculate your bmi".toUpperCase(),
                  style: TextStyle(fontSize: 20, letterSpacing: 2),
                ),
              ),
            )
          ],
        ));
  }
}



