import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.blueGrey,
              height: 100,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            height: 50,
            top: 125,
            child: Container(
              color: Colors.green,
            ),
          ),
          // Positioned.fill(
          //   top: 20,
          //   child: Container(
          //     color: Colors.orange,
          //     width: 50,
          //   ),
          // ),
        ],
      ),
    );
  }
}
