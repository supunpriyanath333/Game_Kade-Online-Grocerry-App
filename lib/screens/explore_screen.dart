import 'package:flutter/material.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/category_card.dart';
import '../widgets/bottom_nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data list based on your Explore.jpg image
    final List<Map<String, String>> categories = [
      {"name": "Fresh Vegetable", "image": "assets/images/veg_cat.png"},
      {"name": "Fresh Fruits", "image": "assets/images/fruit_cat.png"},
      {"name": "Fresh Meats", "image": "assets/images/meat_cat.png"},
      {"name": "Rice", "image": "assets/images/rice_cat.png"},
      {"name": "Dairy & Eggs", "image": "assets/images/dairy_cat.png"},
      {"name": "Beverages", "image": "assets/images/bev_cat.png"},
      {"name": "Noodles & Pasta", "image": "assets/images/noodle_cat.png"},
      {"name": "Chips & Snacks", "image": "assets/images/chips_cat.png"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Explore Products",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SearchBarWidget(), // Reusing your SearchBar widget
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns as per UI
                childAspectRatio: 0.9,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemBuilder: (context, index) {
                return CategoryCard(
                  title: categories[index]["name"]!,
                  image: categories[index]["image"]!,
                );
              },
            ),
          ),
        ],
      ),
      // Set currentIndex to 1 for Explore
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          // Handle navigation logic here
        },
      ),
    );
  }
}
