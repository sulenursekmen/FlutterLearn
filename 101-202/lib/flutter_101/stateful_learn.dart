import 'package:demos/product/counter_hello_button.dart';
import 'package:demos/product/language/language_item.dart';
import 'package:flutter/material.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;

  void incrementValue() {
    setState(() {
      _countValue++;
    });
  }

  void deincrementValue() {
    setState(() {
      _countValue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          LanguageItems.welcomeTitle,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: _deincrementButton(),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(
      onPressed: () {
        deincrementValue();
      },
      child: Icon(Icons.remove),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: Icon(Icons.add),
    );
  }
}
