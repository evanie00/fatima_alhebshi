import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  String name;
  Secondpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A4D92), // أزرق أنيق
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // دائرة جمالية
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.waving_hand_rounded,
                  color: Color(0xFF0A4D92),
                  size: 70,
                ),
              ),
            ),

            const SizedBox(height: 40),

            Text(
              "Welcome! ${name}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Glad to have you here",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
