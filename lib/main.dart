import 'package:demos/flutter_303/call_back_learn.dart';
import 'package:demos/flutter_303/tabbar_advance.dart';
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
      home: const TabAdvanceLearn(),
    );
  }
}


// ThemeData.light().copyWith(
          //     tabBarTheme:
          //         TabBarTheme(indicatorSize: TabBarIndicatorSize.label),
          //     bottomAppBarTheme:
          //         BottomAppBarTheme(shape: CircularNotchedRectangle()),
          //     listTileTheme:
          //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
          //     progressIndicatorTheme:
          //         const ProgressIndicatorThemeData(color: Colors.black),
          //     appBarTheme: const AppBarTheme(
          //       centerTitle: true,
          //       backgroundColor: Colors.blueGrey,
          //       elevation: 0,
          //     ),
          //     inputDecorationTheme: InputDecorationTheme(
          //         // filled: true,
          //         fillColor: Colors.grey,
          //         iconColor: Colors.blueGrey,
          //         border: OutlineInputBorder(),
          //         floatingLabelStyle: TextStyle(color: Colors.black))
              // iconTheme: IconThemeData(color: Colors.orange)