import 'package:flutter/material.dart';

import '../../app/constants/theme_constant.dart';

class AppTheme {
  AppTheme._();

  static getApplicationTheme({required bool isDarkMode}) {
    return ThemeData(
      // Change app bar color
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),

      // Change elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),

      // Change text field theme
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(),
        labelStyle: TextStyle(
          fontSize: 20,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ThemeConstant.primaryColor,
          ),
        ),
      ),
      // Circular progress bar theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.black,
      ),
      //Bottom navigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}


// m