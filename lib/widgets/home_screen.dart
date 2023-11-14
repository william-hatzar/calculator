import 'package:calculator/widgets/button_builder.dart';
import 'package:calculator/widgets/delete_button.dart';
import 'package:calculator/widgets/equals_button.dart';
import 'package:calculator/widgets/input_box.dart';
import 'package:calculator/widgets/reset_button.dart';
import 'package:flutter/material.dart';
import 'main_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B4664),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            const Header(),
            const SizedBox(height: 25.0),
            const InputBox(),
            const SizedBox(height: 30.0),
            Container(
              height: 550,
              width: 450,
              decoration: BoxDecoration(
                  color: const Color(0xff252D44),
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Padding(
                padding:  EdgeInsets.all(22.0),
                child: Column(
                  children: [
                     Expanded(
                      child: Row(
                        children: [
                           ButtonBuilder(number: "7"),
                           SizedBox(width: 15.0),
                           ButtonBuilder(number: "8"),
                           SizedBox(width: 15.0),
                           ButtonBuilder(number: "9"),
                           SizedBox(width: 15.0),
                           DeleteButton(),
                        ],
                      ),
                    ),
                     Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(number: "4"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "5"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "6"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "+"),
                        ],
                      ),
                    ),
                     Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(number: "1"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "2"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "3"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "-"),
                        ],
                      ),
                    ),
                     Expanded(
                      child: Row(
                        children: [
                          ButtonBuilder(number: "."),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "0"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "/"),
                          SizedBox(width: 15.0),
                          ButtonBuilder(number: "x"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                           ResetButton(),
                           SizedBox(width: 15.0),
                          Equals(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
