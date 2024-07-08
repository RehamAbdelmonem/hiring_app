import 'package:flutter/material.dart';

class UserTypeController extends ChangeNotifier {
  int _value = 1;

  int get value => _value;

  void setValue(int newValue) {
    if (_value != newValue) {
      _value = newValue;
      notifyListeners();
    }
  }
}
