import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final String expression;
  final List<String> items;
  final int currentIndex;
  Color getBackgroundColour() {
    if (items[currentIndex] == "Theme 1") {
      return Color(0xff181F33);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xffEEEEEE);
    } else {
      return const Color(0xff1E0836);
    }
  }

  Color getTextColour() {
    if (items[currentIndex] == "Theme 1") {
      return Colors.white;
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xff37372D);
    } else {
      return const Color(0xffFFE664);
    }
  }

  const InputBox({Key? key, required this.expression, required this.items, required this.currentIndex}) : super(key: key);

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(30.0),
        height: 100,
        width: 450,
        decoration: BoxDecoration(
            color: widget.getBackgroundColour(),
            borderRadius: BorderRadius.circular(10.0)),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(widget.expression,
              style: TextStyle(
                  fontFamily: "League Spartan",
                  color: widget.getTextColour(),
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold)),
        ));
  }
}