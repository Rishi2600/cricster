import 'package:flutter/material.dart';
import 'package:cricster/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricster',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF181818), // Main dark background
        primaryColor: const Color(0xFF00BFA5), // A teal/green accent like Cricbuzz
        cardColor: const Color(0xFF222222), // Slightly lighter background for cards
        fontFamily: 'Roboto', // A clean, standard font
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2D2D2D), // App bar color
          elevation: 4.0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF2D2D2D),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          type: BottomNavigationBarType.fixed, // Ensures all items are visible
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
//this page is usually for the themes and fonts. Main stuff is at the home.
