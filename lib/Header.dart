import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("calc",
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: "League Spartan",
                color: Colors.white,
                fontWeight: FontWeight.w900))
      ],
    );
  }
}
