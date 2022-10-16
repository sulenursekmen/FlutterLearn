import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({super.key, this.onNumber});
  final bool Function(int number)? onNumber;
  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  Color? _backgroundColor;
  //bana random bir sayı dön ,bu sayıyı ben kontrol edip sana bir cevap vericem
  //bu cevaba göre bu butonun rengini güncelle
  //eger dogru ise yesil,yanlıssa kırmızı yap
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final result = Random().nextInt(10);
        final response = widget.onNumber?.call(result) ?? false;
        setState(() {
          _backgroundColor = response ? Colors.green : Colors.red;
        });
      },
      child: Text('Button'),
      style: ElevatedButton.styleFrom(backgroundColor: _backgroundColor),
    );
  }
}
