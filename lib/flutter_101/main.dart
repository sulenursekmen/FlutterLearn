import 'package:demos/flutter_101/navigation_learn.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData.light().copyWith(
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //     // filled: true,
        //     fillColor: Colors.grey,
        //     iconColor: Colors.blueGrey,
        //     border: OutlineInputBorder(),
        //     floatingLabelStyle: TextStyle(color: Colors.black))
        // // iconTheme: IconThemeData(color: Colors.orange)
      ),
      home: const NavigationLearn(),
    );
  }
}
