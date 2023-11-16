import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final List<String> items;
  final int currentIndex;
  final Function() onPressedCallback;
  Color getTitleColour() {
    if (items[currentIndex] == "Theme 1") {
      return Colors.white;
    } else if (items[currentIndex] == "Theme 2") {
      return const Color(0xff34362C);
    } else {
      return const Color(0xffFEE844);
    }
  }

  const Header({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onPressedCallback,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String getTheme() {
    return widget.items[widget.currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text("calc",
            style: TextStyle(
                fontFamily: "League Spartan",
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: widget.getTitleColour())),
        const SizedBox(width: 220.0),
        GestureDetector(
          key: UniqueKey(), // Add a unique key to force the GestureDetector to rebuild
          onTap: () {
            widget.onPressedCallback();
          },
          child: Text(
              "${getTheme()}",
              style: TextStyle(
                  fontFamily: "League Spartan",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: widget.getTitleColour())),
        )
      ],
    );
  }
}
