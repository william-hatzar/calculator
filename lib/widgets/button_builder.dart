import 'package:flutter/material.dart';

class ButtonBuilder extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final double fontSize;
  final List items;
  final int currentIndex;
  final Function(String) onPressedCallback;

  Color getLineColour() {
    if (items[currentIndex] == "Theme 1") {
      return const Color(0xffB5A69A);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xffA99D90);
    } else {
      return const Color(0xff851C9B);
    }
  }

  Color getButtonBackground() {
    if (items[currentIndex] == "Theme 1") {
      return const Color(0xffE9E3DB);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xffE6E4E0);
    } else {
      return const Color(0xff331B4D);
    }
  }

  Color getButtonTextColour() {
    if (items[currentIndex] == "Theme 1") {
      return const Color(0xff454857);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xff454857);
    } else {
      return Colors.yellow;
    }
  }

  const ButtonBuilder({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.fontSize,
    required this.items,
    required this.currentIndex,
    required this.onPressedCallback,
  }) : super(key: key);

  @override
  State<ButtonBuilder> createState() => _ButtonBuilderState();
}



class _ButtonBuilderState extends State<ButtonBuilder> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.text == "x") {
          widget.onPressedCallback("*");
        } else {
          widget.onPressedCallback(widget.text);
        }
      },
      child: Column(
        children: [
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
      ),
              color: widget.getButtonBackground(),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                style: TextStyle(
                  fontSize: widget.fontSize,
                  fontFamily: "League Spartan",
                  color: widget.getButtonTextColour(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 4,
            width: widget.width,
            decoration: BoxDecoration(
              color: widget.getLineColour(), // Replace with your desired accent color
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
