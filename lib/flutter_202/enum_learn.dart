import 'package:flutter/material.dart';

class EnumLearn extends StatefulWidget {
  const EnumLearn({super.key});

  @override
  State<EnumLearn> createState() => _EnumLearnState();
}

class _EnumLearnState extends State<EnumLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
        ),
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;

      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
