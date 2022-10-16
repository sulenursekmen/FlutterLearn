import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: const Text('Buton Çeşitleri'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Text Button',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              style: ButtonStyle(
                  // backgroundColor: MaterialStateProperty.all<Color>(Colors.pink) renk için
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
              })),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
            SizedBox(
              width: 10,
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.person),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: const CircleBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            InkWell(
              child: Text('Inkwelle Buton'),
              onTap: () {},
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 40, right: 40),
                child: Text(
                  'data',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//Butona size vermek için SizedBox ile çevrele
//Borders
//CircleBorder(),RoundedRactangleBorder()
//EdgeInsets.symetric vertical yukardan horizontal yandan boşluk