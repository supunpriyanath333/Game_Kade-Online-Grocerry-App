import 'package:flutter/material.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/special_offer_card.dart';
import '../widgets/product_card.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Header: Location & Profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.location_on, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        "786/B, Thihagoda",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/user_profile.jpg',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SearchBarWidget(),
              const SizedBox(height: 20),
              // Banner
              Image.asset(
                'assets/images/home_banner.png',
                width: double.infinity,
              ),
              const SizedBox(height: 25),

              _buildSectionHeader("Special Offers"),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialOfferCard(
                      image: 'assets/images/banana.png',
                      name: "Ambum Kesel",
                      weight: "100g",
                      price: "16.00",
                      oldPrice: "20.00",
                      discount: "20% OFF",
                    ),
                    SpecialOfferCard(
                      image: 'assets/images/pumpkin.png',
                      name: "Pumkin",
                      weight: "100g",
                      price: "27.00",
                      oldPrice: "30.00",
                      discount: "10% OFF",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              _buildSectionHeader("Hot Deals"),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(
                      image: 'assets/images/carrot.png',
                      name: "Carrot (Nuwaraeliya)",
                      weight: "100g",
                      price: "76",
                    ),
                    ProductCard(
                      image: 'assets/images/marmite.png',
                      name: "Marmite",
                      weight: "100g",
                      price: "720",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0, onTap: (index) {}),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View More",
            style: TextStyle(color: Color(0xFF53B175)),
          ),
        ),
      ],
    );
  }
}
