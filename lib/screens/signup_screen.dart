import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import 'verification_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // 1. Create the controller to capture the email input
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _emailController.dispose();
    super.dispose();
  }

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
              Center(
                child: Image.asset(
                  'assets/images/logo.png', 
                  height: 50,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Create Your New Account",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 30),

              const CustomTextField(label: "Name", hint: "Enter your full name"),
              const SizedBox(height: 20),
              
              // 2. Pass the controller to your Email field
              CustomTextField(
                label: "Email", 
                hint: "Enter your email address",
                controller: _emailController, // We need to add this property to CustomTextField
              ),
              
              const SizedBox(height: 20),
              const CustomTextField(label: "Mobile No", hint: "Enter your mobile number"),
              const SizedBox(height: 20),
              const CustomTextField(label: "Password", hint: "Enter your password", isPassword: true),
              const SizedBox(height: 20),
              const CustomTextField(label: "Confirm Password", hint: "Enter your password again", isPassword: true),
              
              const SizedBox(height: 40),

              CustomButton(
                label: "Sing Up", 
                onPressed: () {
                  // 3. Pass the actual text from the controller to the VerificationScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(
                        email: _emailController.text.isEmpty 
                            ? "your email" 
                            : _emailController.text,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? ", style: TextStyle(fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      "Singup", 
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