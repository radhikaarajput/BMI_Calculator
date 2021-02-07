import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//enum created outside of class with first letter capital
enum Gender { male, female }

const bottomContainerHeight = 40.0;
const activeCardColour = Color(0xff1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  /*Color maleCardColour=inactiveCardColour;
  Color femaleCardColour=inactiveCardColour;

  void updateColour(Gender selectedGender)
  {
       if(selectedGender== Gender.male)    //male
      {
        if(maleCardColour==inactiveCardColour)
          {
            maleCardColour=activeCardColour;
            femaleCardColour=inactiveCardColour;
          }
      }
    if(selectedGender== Gender.female){
      if(femaleCardColour==inactiveCardColour)
      {
       femaleCardColour=activeCardColour;
       maleCardColour=inactiveCardColour;
      }
    }

  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                      print(selectedGender);
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activeCardColour
                      : inactiveCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                        print(selectedGender);
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                )
              ],
            )),
            Expanded(child: ReusableCard(colour: activeCardColour)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                  Expanded(child: ReusableCard(colour: activeCardColour)),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
