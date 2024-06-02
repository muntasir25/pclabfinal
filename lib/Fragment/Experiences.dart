import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experiences"),
        backgroundColor: const Color.fromARGB(255, 148, 180, 177),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/Assets/images/BG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildExperienceTile(
                  company: "Hanif Electronics",
                  icon: Icons.work,
                  role: "Computer Operator",
                  years: "2018 - 2020",
                  about: "Love to work in computer, the first job is that.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceTile({
    required String company,
    required IconData icon,
    required String role,
    required String years,
    required String about,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.teal, // Change the color to teal
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: TextStyle(fontSize: 18, color: const Color.fromARGB(179, 255, 255, 255))),
          Text(
            years,
            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 158, 158, 158)),
          ),
          SizedBox(height: 8), // Add spacing between role/years and about
          Text(
            about,
            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 96, 198)),
          ),
        ],
      ),
    );
  }
}
