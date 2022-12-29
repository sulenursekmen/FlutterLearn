import 'package:demos/core/card.dart';
import 'package:flutter/material.dart';
import 'package:demos/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(flex: 2, child: CardWidget()),
            Spacer(flex: 3),
            Expanded(flex: 2, child: CardWidget()),
          ],
        ),
      ),
    );
  }
}
