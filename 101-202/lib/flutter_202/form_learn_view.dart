import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('a');
        },
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) ;
                  print('object');
                },
                child: Text('save')),
            DropdownButtonFormField<String>(
              value: 'aaa',
              validator: FormFieldValidator().isNotEmpty,
              items: [
                DropdownMenuItem(
                  child: Text('Dropdown'),
                  value: 'a',
                ),
                DropdownMenuItem(
                  child: Text('Dropdown'),
                  value: 'a1',
                ),
                DropdownMenuItem(
                  child: Text('Dropdown'),
                  value: '2',
                ),
              ],
              onChanged: (value) {},
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
  }
}

class ValidatorMessage {
  static const String _notEmpty = 'boş geçilemez';
}
