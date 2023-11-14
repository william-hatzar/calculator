import 'package:calculator/widgets/button_builder.dart';
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
            //Header
            const Header(),
            const SizedBox(height: 25.0),
            //Input Box
            Container(
                padding: EdgeInsets.all(30.0),
                height: 100,
                width: 450,
                decoration: BoxDecoration(
                    color: const Color(0xff181F33),
                    borderRadius: BorderRadius.circular(10.0)),
              child: const Align(alignment: Alignment.bottomRight,child: Text("399,981", style: TextStyle(fontFamily: "League Spartan", color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold)),)
            ),
            const SizedBox(height: 30.0),
            Container(
              height: 550,
              width: 450,
              decoration: BoxDecoration(
                  color: const Color(0xff252D44),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const ButtonBuilder(number: "7"),
                          const SizedBox(width: 15.0),
                          const ButtonBuilder(number: "8"),
                          const SizedBox(width: 15.0),
                          const ButtonBuilder(number: "9"),
                          const SizedBox(width: 15.0),
                          Container(
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
                                          fontSize: 20.00)))),
                        ],
                      ),
                    ),
                    const Expanded(
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
                    const Expanded(
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
                    const Expanded(
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
                          Container(
                            height: 70,
                            width: 145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xff647299)),
                            child: const Align(child: Text("RESET", style: TextStyle(fontFamily: "League Spartan", color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),),
                          ),
                          const SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffD13F30)),
                            child: const Align(child: Text("=", style: TextStyle(fontFamily: "League Spartan", color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),),
                          ),
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
