import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: Column(
        children: [
          newCard(context),
          newCard(context),
        ],
      ),
    );
  }

  Card newCard(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor,
      margin: ProjectMargins.cardMargin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}
//Borders CircleBorder(),RoundedRectangleBorder() ve StadiumBorder()