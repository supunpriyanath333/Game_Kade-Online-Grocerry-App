import 'package:flutter/material.dart';
import 'login_screen.dart'; // Ensure this file exists in your lib/screens folder

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Background Image (The Delivery Man)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                // Replace with your local asset: AssetImage('assets/images/onboarding.jpg')
                image: NetworkImage('https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1000'), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2. Dark Overlay - Makes the white text readable
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
          ),

          // 3. Content Layer
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // White Carrot Icon (Matching your image)
                  const Icon(
                    Icons.eco, // This looks similar to the carrot leaf logo
                    color: Colors.white,
                    size: 55,
                  ),
                  
                  const SizedBox(height: 15),

                  // Main Welcome Text
                  const Text(
                    "Welcome\nto our store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      height: 1.1, // Matches the tight line spacing in your UI
                    ),
                  ),

                  const SizedBox(height: 5),

                  // Subtitle Text
                  const Text(
                    "Ger your groceries in as fast as one hour", // Kept the typo "Ger" from your image
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // "Get Started" Button
                  SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigates to the Login Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53B175), // Brand Green
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19), // Perfectly rounded corners
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}