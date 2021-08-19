import 'package:flutter/material.dart';

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
                Expanded(child: ReuseableCard(ContainerColor)),
                Expanded(child: ReuseableCard(ContainerColor)),
              ],
            ),
            ),
            Expanded(
              child: ReuseableCard(ContainerColor),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReuseableCard(ContainerColor)),
                Expanded(
                  child: ReuseableCard(ContainerColor),
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

class ReuseableCard extends StatelessWidget {
  final Color colour;

  ReuseableCard(this.colour);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
