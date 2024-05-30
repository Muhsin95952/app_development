import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier{
  Color _color1 = Colors.green;
  Color _color2 = Colors.red; 

  Color get color1 => _color1;
  Color get color2 => _color2;

  void swapColor() {
    Color temp = _color1;
    _color1 = _color2;
    _color2 = temp;
    notifyListeners();
  }

}