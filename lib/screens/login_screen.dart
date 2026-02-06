import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'signup_screen.dart';

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
              // 1. Carrot Logo (UPDATED TO LOCAL ASSET)
              Center(
                child: Image.asset(
                  'assets/images/logo.png', 
                  height: 60,
                ),
              ),
              const SizedBox(height: 60),
              const Text("Log In", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Enter Your E-mail and Password", style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 40),

              // 2. REUSABLE EMAIL FIELD
              const CustomTextField(label: "Email", hint: "Enter your email address"),
              const SizedBox(height: 30),

              // 3. REUSABLE PASSWORD FIELD
              const CustomTextField(label: "Password", hint: "Enter your password", isPassword: true),
              
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 20),

              // 4. REUSABLE BUTTON
              CustomButton(
                label: "Log In", 
                onPressed: () { /* Logic */ }
              ),

              const SizedBox(height: 25),
              // 5. Signup Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ", style: TextStyle(fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                    },
                    child: const Text(
                      "Singup", // Kept your specific typo
                      style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}