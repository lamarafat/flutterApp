import 'package:app_1/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landing extends StatelessWidget {
  const landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8BFAA),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => onboarding1()),
          );
        },
        child: Center(
          child: Text(
            "True Style",
            style: GoogleFonts.sedgwickAve(
              textStyle: TextStyle(fontSize: 48, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}