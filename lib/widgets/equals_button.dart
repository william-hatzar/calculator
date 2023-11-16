import 'package:flutter/material.dart';

class EqualsButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final Color buttonColour;
  final double fontSize;
  final List items;
  final int currentIndex;
  final Function(String) onPressedCallback;

  Color getLineColour() {
    if (items[currentIndex] == "Theme 1") {
      return Color(0xff902316);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xff873700);
    } else {
      return const Color(0xff6DF8EF);
    }
  }

  Color getButtonBackground() {
    if (items[currentIndex] == "Theme 1") {
      return Color(0xffD13F30);
    } else if (items[currentIndex] == "Theme 2") {
      return Color(0xffC85300);
    } else {
      return const Color(0xff00DECF);
    }
  }

  const EqualsButton({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.buttonColour,
    required this.fontSize,
    required this.onPressedCallback,
    required this.currentIndex,
    required this.items
  }) : super(key: key);

  @override
  State<EqualsButton> createState() => _EqualsButtonState();
}

class _EqualsButtonState extends State<EqualsButton> {
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
                  color: widget.buttonColour,
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
