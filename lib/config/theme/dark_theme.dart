import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  useMaterial3: false,
  primaryColor: Colors.black54,
  scaffoldBackgroundColor: Colors.white38,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(
      color: Colors.white70,
    )
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    unselectedItemColor: Colors.white38,
    selectedItemColor: Colors.white
  )

);