import 'package:flutter/material.dart';

class MyName with ChangeNotifier {
  /// Internal, private state of the cart.
  String _name = '';

  void setName(String item) {
    this._name = item;
    notifyListeners();
  }

  String get getName {
    return _name;
  }
}
