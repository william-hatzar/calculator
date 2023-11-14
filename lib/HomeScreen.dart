import 'package:flutter/material.dart';
import 'Header.dart';

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
            const SizedBox(height: 60.0),
            const Header(),
            const SizedBox(height: 30.0),
            Container(
                height: 100,
                width: 450,
                decoration: BoxDecoration(
                    color: const Color(0xff181F33),
                    borderRadius: BorderRadius.circular(10.0))),
            SizedBox(height: 30.0),
            Container(
              height: 550,
              width: 450,
              decoration: BoxDecoration(
                  color: const Color(0xff252D44),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          const SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
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
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20.00)))),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          const SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          const SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          const SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
                          ),
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
                                color: const Color(0xffEAE3DB)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 70,
                            width: 145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: const Color(0xffEAE3DB)),
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
