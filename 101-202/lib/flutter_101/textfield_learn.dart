import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              buildCounter: (context,
                      {int? currentLength, bool? isFocused, maxLength}) =>
                  animatedContainer(currentLength),
              //  Container(
              //   height: 10,
              //   width: 40,
              //   color: Colors.green[50 * ((currentLength ?? 0) ~/ 2)],
              // ),
              maxLength: 20,
              //inputDecoration classla al
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  labelText: 'Mail',
                  fillColor: Colors.white24,
                  filled: true),
              keyboardType: TextInputType.emailAddress,
              autofillHints: [AutofillHints.email],
              //classla  yaz textinputformatter
              //focusNode inputa girerken hangisinde olduğunu verir.
              //autofocus proje acılır acılmaz üstten baslıyo
              // textInputAction: TextInputAction.next,
              // inputFormatters: [
              //   TextInputFormatter.withFunction((oldValue, newValue) {
              //     if (oldValue.text.length.isOdd) {
              //       return newValue;
              //     }
              //     return oldValue;
              //   }),
              // ],
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: Duration(microseconds: 100),
      height: 10,
      width: 40.0 * (currentLength ?? 0),
      color: Colors.green[50 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}
