import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class LocationSelectionScreen extends StatelessWidget {
  const LocationSelectionScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // 1. Map Illustration
              Center(
                child: Image.asset(
                  'assets/images/location_illustration.png', // Ensure you add this asset
                  height: 180,
                ),
              ),
              const SizedBox(height: 30),

              // 2. Title & Description
              const Text(
                "Select Your Location",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                "We deliver only within a 20 km radius from our Game Kade store. We deliver to Matara town, Weligama, Palatuwa, Thihagoda, Dikwella and any surrounding areas.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey, height: 1.5),
              ),
              const SizedBox(height: 30),

              // 3. Our Location Section
              const Text(
                "Our Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 150,
                child: CustomButton(
                  label: "View",
                  onPressed: () {
                    // Logic to show shop location on map
                  },
                ),
              ),
              const SizedBox(height: 30),

              // 4. Your Address Field
              _buildLabel("Your Address"),
              TextField(
                maxLines: 3,
                decoration: _buildInputDecoration("Enter delivery your address"),
              ),
              const SizedBox(height: 20),

              // 5. Your Location Field (Map Picker)
              _buildLabel("Your Location"),
              TextField(
                readOnly: true,
                decoration: _buildInputDecoration("Set your location using google map").copyWith(
                  suffixIcon: const Icon(Icons.location_on_outlined, color: Colors.black),
                ),
                onTap: () {
                  // Logic to open map picker
                },
              ),
              const SizedBox(height: 40),

              // 6. Next Button
              CustomButton(
                label: "Next",
                onPressed: () {
                  // Logic to validate 20km range and proceed
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Helper for Labels to keep UI clean
  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Helper for Input Decoration to match your style
  InputDecoration _buildInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey),
      contentPadding: const EdgeInsets.all(15),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.black12, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xFF53B175), width: 2),
      ),
    );
  }
}