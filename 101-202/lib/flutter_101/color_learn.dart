import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  // final ColorsItems colorsItems = ColorsItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(134, 182, 111, 30),
        title: Text('Colors'),
      ),
      body: Container(
        child: Text('colors'),
      ),
    );
  }
}

class ColorsItems {
  final Color spanishViolet = const Color(0xff4d1f7a);
  final Color deneme = Color.fromARGB(220, 202, 83, 14);
}
