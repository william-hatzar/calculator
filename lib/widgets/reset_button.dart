import 'package:flutter/material.dart';

class ResetButton extends StatefulWidget {
  const ResetButton({Key? key}) : super(key: key);

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 145,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xff647299)),
      child: const Align(
        child: Text("RESET",
            style: TextStyle(
                fontFamily: "League Spartan",
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
