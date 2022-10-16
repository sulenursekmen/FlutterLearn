import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Scaffold Samples')),
      ),
      body: Center(
          child: Text(
        'Merhaba',
        style: TextStyle(fontSize: 30),
      )),
      backgroundColor: Colors.blueGrey,
      //extedBody:true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lime,
        child: Icon(Icons.dangerous),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => Container(height: 200));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      // bottomSheet: BottomSheet(
      //   onClosing: () {},
      //   builder: (context) {
      //     return Text('data');
      //   },
      //   enableDrag: false,
      // ),
      bottomNavigationBar: Container(
        height: 200,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.person_add), label: 'a'),
        ]),
      ),
    );
  }
}
