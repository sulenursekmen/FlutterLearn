// import 'package:demos/core/random_image.dart';
import 'package:demos/core/random_image.dart';
import 'package:flutter/material.dart';

class StackDemoPage extends StatelessWidget {
  const StackDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              children: [
                Positioned.fill(child: RandomImage()),
                const Spacer(
                  flex: 6,
                ),
              ],
            )),
      ]),
    );
  }
}
