import 'package:bmi_calculator/Models/icon_content.dart';
import 'package:bmi_calculator/Models/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const BottomContainerHeight = 60.0;
const ActiveCardColor = Color(0xFF1D1F33);
const InactiveCardColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);
enum Gender {
  male , female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = ActiveCardColor;
  Color femaleCardColor = ActiveCardColor;

  void updateColor(Gender selectedGender) {

    if (selectedGender == Gender.male) {
      if (maleCardColor == ActiveCardColor) {
        maleCardColor = InactiveCardColor;
        femaleCardColor = ActiveCardColor;
      } else {
        maleCardColor = ActiveCardColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == ActiveCardColor) {
        femaleCardColor = InactiveCardColor;
        maleCardColor = ActiveCardColor;
      } else {
        femaleCardColor = ActiveCardColor;
      }
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ReuseableCard(
                        colour: maleCardColor,
                        childCard: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "Male",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReuseableCard(
                        colour: femaleCardColor,
                        childCard: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: "Female",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(colour: ActiveCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReuseableCard(colour: ActiveCardColor)),
                  Expanded(
                    child: ReuseableCard(colour: ActiveCardColor),
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
