import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  final String number;

  const ButtonBuilder({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffEAE3DB)),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            number,
            style: const TextStyle(
                fontSize: 35.0,
                fontFamily: "League Spartan",
                color: Color(0xff454A57),
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
