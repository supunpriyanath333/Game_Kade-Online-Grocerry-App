import 'package:flutter/material.dart';

void main() {
  runApp(const GameKadeApp());
}

class GameKadeApp extends StatelessWidget {
  const GameKadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Kade',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Top Bar
      appBar: AppBar(
        title: const Text("Game Kade - Matara", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      
      // 2. Main Body
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "What do you need today?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          
          // 3. Category List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                categoryCard("Vegetables", Icons.eco, Colors.green),
                categoryCard("Fruits", Icons.apple, Colors.red),
                categoryCard("Dairy", Icons.water_drop, Colors.blue),
                categoryCard("Others", Icons.shopping_basket, Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // A custom "Widget" function to create category buttons easily
  Widget categoryCard(String name, IconData icon, Color color) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // We will add navigation here later!
          print("Clicked on $name");
        },
      ),
    );
  }
}