import 'package:flutter/material.dart';

class Counter10 with ChangeNotifier {
  int _count10 = 0;
  int get count10 => _count10;

  void increment10() {
    _count10 += 10;
    notifyListeners();
  }

  void decrement10() {
    _count10 -= 10;
    notifyListeners();
  }
}
