import 'package:bmi_calculator/Models/constants.dart';
import 'package:bmi_calculator/Models/icon_content.dart';
import 'package:bmi_calculator/Models/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(colour: kInactiveCardColor,
                childCard: Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height", style : kLabelTextStyle,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children: [
                       Text(height.toString(),
                         style: kNumberTestStyle,),
                       Text("cm", style: kLabelTextStyle,)
                     ],
                   ),
                    
                    Slider(value: height.toDouble(),
                        max: 220, min: 120,
                        activeColor: Color(0xFFE81555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: ( double newValue ){
                     setState(() {
                       height = newValue.round();
                     });
                        },
                    ),


                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReuseableCard(colour: kInactiveCardColor)),
                  Expanded(
                    child: ReuseableCard(
                      colour: kInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
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
