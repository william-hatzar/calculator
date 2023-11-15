import 'package:calculator/constants/app_colours.dart';
import 'package:calculator/util/calc_util.dart';
import 'package:calculator/widgets/button_builder.dart';
import 'package:calculator/widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'main_header.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppColours appColours = AppColours();
  CalcUtil calcUtil = CalcUtil();
  String _expression = '';
  double _result = 0.0;

  void onButtonPressed(String text) {
    setState(() {
      if (text == '=') {
        try {
          _result = calcUtil.evalExpression(_expression);
        } catch (e) {
          _result = 0.0;
        }
        _expression = _result.toString();
      } else if (text == 'DEL') {
        _expression = '';
        _result = 0.0;
      } else {
        _expression += text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B4664),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            const Header(),
            const SizedBox(height: 25.0),
            InputBox(expression: _expression),
            const SizedBox(height: 30.0),
            Container(
              height: 550,
              width: 450,
              decoration: BoxDecoration(
                  color: const Color(0xff252D44),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(
                            text: "7",
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "8",
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "9",
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                              text: "DEL",
                              width: 65,
                              height: 70,
                              buttonBackground: appColours.deleteColor,
                              buttonColour: appColours.whiteTextColour,
                              fontSize: 20.00,
                            onPressedCallback: onButtonPressed,)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(
                            text: "4",
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "5",
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "6",
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '+',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(
                            text: '1',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '2',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '3',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '-',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(
                            text: '.',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '0',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '/',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: 'x',
                            height: 70,
                            width: 65,
                            buttonBackground: appColours.buttonBackground,
                            buttonColour: appColours.buttonColour,
                            fontSize: 35,
                            onPressedCallback: onButtonPressed,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(
                              text: "RESET",
                              width: 145,
                              height: 70,
                              buttonBackground: appColours.deleteColor,
                              buttonColour: appColours.whiteTextColour,
                              fontSize: 20.0,
                              onPressedCallback: onButtonPressed),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                              text: "=",
                              width: 145,
                              height: 70,
                              buttonBackground:
                                  appColours.equalsButtonBackground,
                              buttonColour: appColours.whiteTextColour,
                              fontSize: 20.0,
                            onPressedCallback: onButtonPressed,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
