import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 300,
          width: 300,
          child: Image.asset(
            ImageItems().appleBook,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(child: Images(name: ImageItems().ataturk)),
      ]),
    );
  }
}
//image network netten alıyoruz link
//error builder içineyaz

class ImageItems {
  final String appleBook = 'assets/apple.jpg';
  final String ataturk = 'images/ataturk.jpg';
}

class Images extends StatelessWidget {
  const Images({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/$name');
  }
}
