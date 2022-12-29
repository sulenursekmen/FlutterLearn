import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Indicator Learn',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(child: CircularProgressIndicator()),
          Center(
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              // minHeight: 5,
            ),
          )
        ],
      ),
    );
  }
}
//LinearProgessIndıcator