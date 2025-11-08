import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Profile',
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: Center(
        child: Container(
          width: 390,
          height: 850,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/images.jpeg'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Fatima Al-Hebshi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Software Engineer',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                const Text(
                  'youremail@domain.com | +01 234 567 89',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // Info Cards
                InfoCard(title: 'About Me', content: 'Flutter developer with passion for UI/UX.'),
                InfoCard(title: 'Skills', content: '• Flutter\n• HTML\n• UI/UX\n• C++'),
                InfoCard(title: 'Experience', content: '3 years in programming\nFreelance projects'),
                InfoCard(title: 'Education',content: 'B.Sc. in Computer Science\nUniversity of Seiyun (2025 – 2026)',),
                InfoCard(title: 'Qualifications',content: '• Completed certified Flutter development course\n• Attended UI/UX design bootcamp',),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(201, 100, 152, 1))),
          const SizedBox(height: 8),
          Text(content, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}