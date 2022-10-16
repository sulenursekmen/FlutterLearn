import 'package:flutter/material.dart';

//light özelliğini seçersen flutter kendi ayarlar
//constuctorları göremezsin
class ThemeLight {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    ThemeData theme = ThemeData(
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.blueGrey),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
                onPrimary: _lightColor._buttonColor,
                onSecondary: _lightColor.coalmine)),
        colorScheme: ColorScheme.light(),
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(fontSize: 14, color: _lightColor._textColor),
            ));
  }
}

class _LightColor {
  final Color _textColor = Colors.black;
  final Color _buttonColor = Colors.purple;
  final Color coalmine = Color.fromARGB(30, 4, 52, 1);
}
