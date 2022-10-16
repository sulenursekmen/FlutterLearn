import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline2,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.lime,
            height: 300,
          ),
          Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                // shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.blueGrey,
                    width: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                  ),
                  Container(
                    color: Color.fromARGB(255, 4, 35, 51),
                    width: 100,
                  ),
                  Container(
                    color: Colors.blueGrey,
                    width: 100,
                  ),
                ],
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        ],
      ),
    );
  }
}
