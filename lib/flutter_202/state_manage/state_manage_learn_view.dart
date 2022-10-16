import 'package:flutter/material.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool _isVisible = false;
  bool _isOpacity = false;

  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isOpacity ? Colors.red : Colors.green,
        shadowColor: _isVisible ? Colors.amber : Colors.blue,
      ),
    );
  }
}
