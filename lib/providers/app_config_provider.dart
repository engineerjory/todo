import 'package:flutter/material.dart';
import 'package:todo/my_theme_data.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode mode = ThemeMode.light;

  void setNewLanguage(String newLanguage) {
    if (newLanguage == appLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  void setNewMode(ThemeMode newMode) {
    if (mode == newMode) {
      return;
    }
    mode = newMode;
    notifyListeners();
  }
}
