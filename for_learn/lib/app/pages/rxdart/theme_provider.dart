import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum themeData {dark, light}

class ThemeProvider extends ChangeNotifier {
  var _currentTheme = themeData.light;

  themeData get currentTheme => _currentTheme;
  
   setTheme(themeData theme) {
     _currentTheme = theme;
     notifyListeners();
   }

}