import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.message_outlined,
            color: iconSize.sinoperRed,
            size: iconSize.iconSmall,
          ),
          Icon(
            Icons.message_outlined,
            color: Theme.of(context).backgroundColor,
            size: iconSize.iconSmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  final Color sinoperRed = const Color(0xffb91313);
}
