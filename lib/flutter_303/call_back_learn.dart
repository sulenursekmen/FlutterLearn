// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demos/product/button/answer_button.dart';
import 'package:demos/product/button/loading_button.dart';
import 'package:demos/product/widget/callback_dropdown.dart';
import 'package:flutter/material.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  final double _SizedBoxHeight = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(
            onUserSelected: (CallbackUser user) {
              print(user);
            },
          ),
          AnswerButton(
            onNumber: (number) {
              return number % 3 == 1;
            },
          ),
          SizedBox(
            height: _SizedBoxHeight,
          ),
          LoadingButton(
            title: 'Loading',
            callback: () async {
              await Future.delayed(Duration(seconds: 5));
            },
          ),
        ],
      ),
    );
  }
}

class CallbackUser {
  final String name;
  final int id;

  CallbackUser(this.name, this.id);
  //TODO Dummy Remove it
  static List<CallbackUser> dummyUsers() {
    return [
      CallbackUser('sns', 123),
      CallbackUser('sns', 124),
    ];
  }

  @override
  bool operator ==(covariant CallbackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
