import 'package:flutter/material.dart';

class Equals extends StatefulWidget {
  const Equals({Key? key}) : super(key: key);

  @override
  State<Equals> createState() => _State();
}

class _State extends State<Equals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 145,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffD13F30)),
      child: const Align(
        child: Text("=",
            style: TextStyle(
                fontFamily: "League Spartan",
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
