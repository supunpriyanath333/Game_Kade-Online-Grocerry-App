import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              const SizedBox(height: 60),
              // 1. Carrot Logo (UPDATED TO LOCAL ASSET)
              Center(
                child: Image.asset(
                  'assets/images/logo.png', 
                  height: 50,
                ),
              ),
              const SizedBox(height: 40),

              // 2. Title & Subtitle
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Create Your New Account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),

              // 3. Reusable Input Fields
              const CustomTextField(label: "Name", hint: "Enter your full name"),
              const SizedBox(height: 20),
              const CustomTextField(label: "Email", hint: "Enter your email address"),
              const SizedBox(height: 20),
              const CustomTextField(label: "Mobile No", hint: "Enter your mobile number"),
              const SizedBox(height: 20),
              const CustomTextField(label: "Password", hint: "Enter your password", isPassword: true),
              const SizedBox(height: 20),
              const CustomTextField(label: "Confirm Password", hint: "Enter your password again", isPassword: true),
              
              const SizedBox(height: 40),

              // 4. Reusable Sign Up Button
              CustomButton(
                label: "Sing Up", // Kept your specific design typo
                onPressed: () {
                  // Handle registration logic
                },
              ),
              const SizedBox(height: 25),

              // 5. Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? ", style: TextStyle(fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Goes back to Login screen
                    },
                    child: const Text(
                      "Singup", // Kept your specific design typo
                      style: TextStyle(color: Color(0xFF53B175), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}