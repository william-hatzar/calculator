import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:calculator/themes/Themes.dart';

void main() => runApp(Root());

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);
  Themes themes = Themes();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: themes.lightTheme,
      home: HomeScreen(),
    );
  }
}
