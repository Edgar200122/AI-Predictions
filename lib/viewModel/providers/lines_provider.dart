import 'package:flutter/material.dart';

class LinesProvider extends ChangeNotifier {
  int _selectedIndex = 1;
   int _selectedToggleIndex = 0;
  int get selectedToggleIndex => _selectedToggleIndex;
  int get selectedIndex => _selectedIndex;

  void selectIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }


  void setSelectedToggleIndex(int index) {
    _selectedToggleIndex = index;
    notifyListeners();
  }
}
