//Bir ekran
//Bu ekranda 3 button ve bunlara basınca renk değişim olacak
//seçili olan button selected icon olsun

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    // ne geldiğini anlamak için
    inspect(widget);
    // print(
    //     widget.initialColor != _backgroundColor && widget.initialColor != null);
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int value) {
            if (value == _MyColors.red.index) {
              changeBackgroundColor(Colors.red);
            } else if (value == _MyColors.purple.index) {
              changeBackgroundColor(Colors.purple);
            } else if (value == _MyColors.green.index) {
              changeBackgroundColor(Colors.green);
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.red,
                ),
                label: 'Red'),
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.purple,
                ),
                label: 'Purple'),
            BottomNavigationBarItem(
                icon: _ColorContainer(color: Colors.green), label: 'Green'),
          ]),
    );
  }
}

enum _MyColors { red, purple, green }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
