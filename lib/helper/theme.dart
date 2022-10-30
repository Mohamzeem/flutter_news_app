import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemesModel {
  ThemeData myLight = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      displayLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 15,
        color: Colors.grey,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        fontSize: 15,
        color: Colors.blue,
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: Colors.blue[50],
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.blue),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue[50],
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.blue[50],
        statusBarIconBrightness: Brightness.dark,
      ),
      actionsIconTheme: const IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
        size: 30,
      ),
    ),
  );
}
