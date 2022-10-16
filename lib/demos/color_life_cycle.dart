import 'package:demos/demos/color_demos_view.dart';
import 'package:flutter/material.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              setState(() {
                _backgroundColor = Colors.pink;
              });
            },
            icon: Icon(Icons.clear))
      ]),
      body: Column(children: [
        Spacer(),
        Expanded(
            child: ColorDemosView(
          initialColor: _backgroundColor ?? Colors.transparent,
        )),
      ]),
    );
  }
}
