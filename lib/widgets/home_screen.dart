import 'package:calculator/util/calc_util.dart';
import 'package:calculator/widgets/button_builder.dart';
import 'package:calculator/widgets/delete_button.dart';
import 'package:calculator/widgets/equals_button.dart';
import 'package:calculator/widgets/input_box.dart';
import 'package:calculator/widgets/reset_button.dart';
import 'package:flutter/material.dart';
import 'main_header.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CalcUtil calcUtil = CalcUtil();
  String _expression = '';
  double _result = 0.0;
  List<String> items = ["Theme 1", "Theme 2", "Theme 3"];
  int currentIndex = 0;
  Color getBackgroundColor() {
    if (items[currentIndex] == "Theme 1") {
      return const Color(0xff3B4664);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xffE6E6E6);
    } else {
      return const Color(0xff17062A);
    }
  }

  Color containerBackGroundColour() {
    if (items[currentIndex] == "Theme 1") {
      return const Color(0xff252D44);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xffD3CDCD);
    } else {
      return const Color(0xff1E0836);
    }
  }

  void cycleItems() {
    setState(() {
      currentIndex = (currentIndex + 1) % items.length;
    });
  }

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
      } else if (text == 'RESET') {
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
      backgroundColor: getBackgroundColor(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            Header(items: items, currentIndex: currentIndex, onPressedCallback: cycleItems),
            const SizedBox(height: 25.0),
            InputBox(expression: _expression, items: items, currentIndex: currentIndex,),
            const SizedBox(height: 30.0),
            Container(
              height: 550,
              width: 450,
              decoration: BoxDecoration(
                  color:  containerBackGroundColour(),
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
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "8",
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "9",
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          DeleteButton(
                              text: "DEL",
                              width: 65,
                              height: 70,
                              fontSize: 20.00,
                              buttonColour: Colors.white,
                              items: items,
                              currentIndex: currentIndex,
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
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "5",
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: "6",
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '+',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
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
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '2',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '3',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '-',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
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
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '0',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: '/',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                          const SizedBox(width: 15.0),
                          ButtonBuilder(
                            text: 'x',
                            height: 70,
                            width: 65,
                            fontSize: 35,
                            items: items,
                            currentIndex: currentIndex,
                            onPressedCallback: onButtonPressed,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          ResetButton(
                              text: "RESET",
                              width: 145,
                              height: 70,
                              fontSize: 20.0,
                              onPressedCallback: onButtonPressed, items: items, currentIndex: currentIndex),
                          const SizedBox(width: 15.0),
                          EqualsButton(
                              text: "=",
                              width: 145,
                              height: 70,
                              fontSize: 20.0,
                            onPressedCallback: onButtonPressed,
                            currentIndex: currentIndex,
                              items: items)
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
