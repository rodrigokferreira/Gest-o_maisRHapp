import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PreferenciaTema {
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);

  static setTema() {
    tema.value = WidgetsBinding.instance!.platformDispatcher.platformBrightness;
    changeStatusNavigationBar();
  }

  static changeStatusNavigationBar() {
    bool isDark = tema.value == Brightness.dark;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      statusBarBrightness: isDark ? Brightness.light : Brightness.dark,
      statusBarColor: isDark ? Color.fromARGB(255, 47, 7, 66) : const Color(0xFF673AB7),
      systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: isDark ? Color.fromARGB(255, 48, 15, 70) : Color.fromARGB(238, 66, 18, 90),
    ));
  }

  static ThemeData _buildDarkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: Color.fromARGB(255, 33, 6, 48),
      textTheme: ThemeData.dark().textTheme.copyWith(
        bodyText1: TextStyle(color: Colors.white),
      ),
    );
  }
}
