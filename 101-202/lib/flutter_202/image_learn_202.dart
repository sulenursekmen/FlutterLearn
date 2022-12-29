import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePath.apple.toWidget(),
    );
  }
}

enum ImagePath { apple }

extension ImagePathExtension on ImagePath {
  String path() {
    return 'assets/$name.jpg';
  }

  Widget toWidget({double height = 100}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
