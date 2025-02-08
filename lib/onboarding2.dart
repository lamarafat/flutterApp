import 'package:app_1/onboarding3.dart';
import 'package:app_1/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEAEAEA),
        leading: const Text(""),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const style(),
                  ),
                );
              },
              child: Text(
                "Skip",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xffEAEAEA),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'image/trueStyle/onboarding2.png',
              ),
              const SizedBox(height: 20),
              Text(
                "Say goodbye to style confusion!",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                   "We understand that knowing what to wear can be tricky. That’s why we’re here to simplify it for you. From choosing the right pieces to building outfits for every occasion, we’ll guide you step by step.", 
                     textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF2d2d2d),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFFE8BFAA),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFE8BFAA)),
                  ),
                   const SizedBox(width: 10),
                  const CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFFE8BFAA),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const onboarding3()),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: const Color(0xffFD9059),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 160.0),
                    child: Text(
                      "Next",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}