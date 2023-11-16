import 'package:flutter/material.dart';

class ButtonBuilder extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final Color buttonBackground;
  final Color buttonColour;
  final double fontSize;
  final Function(String) onPressedCallback;

  const ButtonBuilder({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.buttonBackground,
    required this.buttonColour,
    required this.fontSize,
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
              color: widget.buttonBackground,
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
            decoration: const BoxDecoration(
              color: Color(0xffB2A195), // Replace with your desired accent color
              borderRadius: BorderRadius.only(
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
