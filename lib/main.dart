import 'package:flutter/material.dart';
import 'package:game_kade/screens/splash_screen.dart'; 

void main() {
  // REMOVED 'const' from here
  runApp(const GameKadeApp()); 
}

class GameKadeApp extends StatelessWidget {
  const GameKadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // Adding 'const' here is fine if the child allows it
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // If this still errors, remove 'const' from MaterialApp
    );
  }
}