// lib/main.dart
import 'package:flutter/material.dart';
import 'package:hami_minimarket/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hami MiniMarket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Apply brand colors here
        primarySwatch: Colors.green, // Example brand color
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green, // Example brand color
          foregroundColor: Colors.white,
          elevation: 1,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green, // Example brand color
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}