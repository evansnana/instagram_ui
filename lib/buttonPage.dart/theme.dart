import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _seletedTheme;
  ThemeData light = ThemeData.light().copyWith(primaryColor: Colors.green);
  ThemeData dark = ThemeData.dark().copyWith(primaryColor: Colors.white);

  ThemeProvider({required bool isDarkMode}) {
    _seletedTheme = isDarkMode ? light : dark;
    notifyListeners();
  }

  ThemeData get getTheme => _seletedTheme;

  void swapTheme() {
    _seletedTheme = _seletedTheme == light ? dark :light;
    notifyListeners();
  }
}
