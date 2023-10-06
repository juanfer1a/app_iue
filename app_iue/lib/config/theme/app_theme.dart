import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFD46F11);

const List<Color> _colorThemes = [
  _customColor,
  Colors.orange,
  Colors.red,
  Colors.grey,
  Colors.yellow,
  Colors.black
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
