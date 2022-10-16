import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({super.key, required this.title, required this.callback});
  final String title;
  final Future<void> Function() callback;
  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          if (_isLoading) return;
          //beklerken tekrar bastırmaz
          _changeLoading();
          await widget.callback.call();
          _changeLoading();
        },
        child: Center(
            child:
                _isLoading ? CircularProgressIndicator() : Text(widget.title)));
  }
}
