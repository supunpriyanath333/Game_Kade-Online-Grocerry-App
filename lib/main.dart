import 'package:flutter/material.dart';
import 'package:game_kade/screens/splash_screen.dart'; // Ensure 'game_kade' matches your pubspec.yaml name

void main() {
  runApp(const GameKadeApp());
}

class GameKadeApp extends StatelessWidget {
  const GameKadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}