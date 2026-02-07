import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Enter your 4-digit code which we\nsend to your E-mail",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Code",
              style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            
            // 4-Digit Input Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCodeBox(context),
                _buildCodeBox(context),
                _buildCodeBox(context),
                _buildCodeBox(context),
              ],
            ),
            
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Resend logic
                },
                child: const Text(
                  "Resend Code",
                  style: TextStyle(color: Color(0xFF53B175), fontSize: 16),
                ),
              ),
            ),
            
            const Spacer(),
            
            CustomButton(
              label: "Next",
              onPressed: () {
                // Navigate to Location Check or Home
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Helper widget for the 4 individual digit boxes
  Widget _buildCodeBox(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12, width: 2),
      ),
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}