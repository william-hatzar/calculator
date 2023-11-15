import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("calc",
            style: TextStyle(
                fontFamily: "League Spartan",
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        )
      ],
    );
  }
}
