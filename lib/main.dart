import 'package:flutter/material.dart';
import 'widgets/home_screen.dart';
import 'package:calculator/themes/custom_themes.dart';

void main() => runApp(Root());

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);
  final Themes themes = Themes();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: themes.lightTheme,
      home: HomeScreen(),
    );
  }
}
