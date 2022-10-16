import 'package:demos/Flutter_101/image_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoPageView extends StatelessWidget {
  const DemoPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final title = 'Create Your First Note';
    final s = 'data';
    var data2 = 'Create A Note';
    var data3 = 'Import Notes';
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Images(name: 'apple.jpg'),
            titleMethod(title),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                s * 30,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blueGrey),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            buttonMethod(data2),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: Text(
                data3,
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
              onTap: (() {}),
            ),
          ],
        ),
      ),
    );
  }

  InkWell yaziMethod(String data3) {
    return InkWell(
      child: Text(
        data3,
        style: TextStyle(fontSize: 15),
      ),
      onTap: (() {}),
    );
  }

  ElevatedButton buttonMethod(String data2) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      onPressed: () {},
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
        child: Text(
          data2,
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Text titleMethod(String title) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blueGrey),
    );
  }
}
