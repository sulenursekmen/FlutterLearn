// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obsureText = '*';
  bool _isSecure = true;
  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscuringCharacter: _obsureText,
      obscureText: _isSecure,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: 'Password',
        //suffix
        // suffixIcon: Text('a'),
        suffix: _onVisiblityIcon(),
      ),
    );
  }

  IconButton _onVisiblityIcon() {
    return IconButton(
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility_outlined),
        secondChild: const Icon(Icons.visibility_off_outlined),
        duration: const Duration(seconds: 2),
        crossFadeState:
            _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
      // Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
      onPressed: _changeLoading,
    );
  }
}
