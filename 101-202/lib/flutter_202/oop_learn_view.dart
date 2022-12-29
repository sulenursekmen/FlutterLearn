import 'package:demos/flutter_202/oop_learn.dart';
import 'package:flutter/material.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({super.key});

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  FileDownload? download;
  final Widget title = Text('OOP Learn');
  @override
  void initState() {
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CircularProgressIndicator()],
        title: title,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          download?.downloadItem(null);
        },
      ),
    );
  }
}
