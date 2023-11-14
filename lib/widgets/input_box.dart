import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  const InputBox({Key? key}) : super(key: key);

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30.0),
        height: 100,
        width: 450,
        decoration: BoxDecoration(
            color: const Color(0xff181F33),
            borderRadius: BorderRadius.circular(10.0)),
        child: const Align(
          alignment: Alignment.bottomRight,
          child: Text("399,981",
              style: TextStyle(
                  fontFamily: "League Spartan",
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
