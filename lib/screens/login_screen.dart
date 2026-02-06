import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              // 1. Carrot Logo
              Center(
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2347/2347031.png', // Use your assets/images/orange_carrot.png
                  height: 60,
                ),
              ),
              const SizedBox(height: 60),

              // 2. Title & Subtitle
              const Text(
                "Log In",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter Your E-mail and Password",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),

              // 3. Email Field
              const Text(
                "Email",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email address",
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF53B175))),
                ),
              ),
              const SizedBox(height: 30),

              // 4. Password Field
              const Text(
                "Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.visibility_off_outlined, color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF53B175))),
                ),
              ),
              
              // 5. Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 6. Log In Button
              SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Log In",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 7. Signup Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ", style: TextStyle(fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Singup", // Kept the typo "Singup" from your UI image
                      style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}