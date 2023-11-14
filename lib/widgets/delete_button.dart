import 'package:flutter/material.dart';

class DeleteButton extends StatefulWidget {
  const DeleteButton({Key? key}) : super(key: key);

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xff637395)),
        child: const Align(
            alignment: Alignment.center,
            child: Text("DEL",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "League Spartan",
                    fontWeight: FontWeight.w700,
                    fontSize: 20.00))));
  }
}
