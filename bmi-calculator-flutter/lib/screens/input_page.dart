import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculator-brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      CustomIconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ), () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  }),
                ),
                Expanded(
                  child: ReusableCard(
                      selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      CustomIconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'), () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  }),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                kActiveCardColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: kTransparentPink,
                        thumbColor: kPinkColor,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kSliderInactiveColor,
                      ),
                      child: SliderComponent(),
                    ),
                  ],
                ),
                () {}),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      kActiveCardColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  weight--;
                                });
                              }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  weight++;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
                      () {}),
                ),
                Expanded(
                  child: ReusableCard(
                      kActiveCardColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          ),
                        ],
                      ), () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  }),
                ),
              ],
            ),
          ),
          BottomButton(
            "CALCULATE",
            () {
              CalculatorBrain calc = CalculatorBrain(height, weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    calc.calculateBMI().toStringAsFixed(1),
                    calc.getResult(),
                    calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Slider SliderComponent() {
    return Slider(
      value: height.toDouble(),
      min: kMinHeight,
      max: kMaxHeight,
      onChanged: (double newValue) {
        setState(
          () {
            height = newValue.round();
          },
        );
      },
    );
  }
}
