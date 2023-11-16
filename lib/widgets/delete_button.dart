import 'package:flutter/material.dart';

class DeleteButton extends StatefulWidget {
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
      return Color(0xff404E75);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xff1A5F66);
    } else {
      return const Color(0xffBB18F6);
    }
  }

  Color getButtonBackground() {
    if (items[currentIndex] == "Theme 1") {
      return Color(0xff637395);
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xff398187);
    } else {
      return const Color(0xff56077C);
    }
  }

  const DeleteButton({
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
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
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
