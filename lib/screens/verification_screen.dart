import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'location_selection_screen.dart';

class VerificationScreen extends StatelessWidget {
  final String email;

  const VerificationScreen({super.key, required this.email});

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, color: Color(0xFF53B175), size: 80),
            const SizedBox(height: 20),
            const Text(
              "Success!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your email has been verified successfully.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  // Navigate to the Location Selection Screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LocationSelectionScreen()),
                  );
                },
                child: const Text("OK", style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1.3),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text("Your E-mail - ", style: TextStyle(color: Colors.grey, fontSize: 14)),
                Text(email, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                const SizedBox(width: 5),
                const Icon(Icons.edit, size: 16, color: Color(0xFF53B175)),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Code",
              style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCodeBox(context),
                _buildCodeBox(context),
                _buildCodeBox(context),
                _buildCodeBox(context),
              ],
            ),
            // Aligned to match your uploaded Verification.png
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Resend logic here
                },
                child: const Text(
                  "Resend Code", 
                  style: TextStyle(color: Color(0xFF53B175), fontSize: 16)
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
              label: "Next",
              onPressed: () => _showSuccessDialog(context),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

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
        decoration: const InputDecoration(counterText: "", border: InputBorder.none),
      ),
    );
  }
}