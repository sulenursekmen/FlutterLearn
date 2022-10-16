import 'package:demos/core/random_image.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    Key? key,
  }) : super(key: key);
  final Icon cardIcon = Icon(Icons.money);
  final Icon trailingIcon = Icon(Icons.chevron_right);
  final String cardText = 'How do you do use your card';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // dense: true,
        onTap: () {},
        title: const RandomImage(),
        subtitle: Text(cardText),
        leading: cardIcon,
        trailing: SizedBox(child: trailingIcon),
      ),
    );
  }
}
