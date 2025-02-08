import 'package:app_1/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onboarding3 extends StatelessWidget {
  const onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEAEAEA),
        leading: const Text(""),
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
                'image/trueStyle/onboarding3.png',
              ),
              const SizedBox(height: 20),
              Text(
                "Let’s start your personal style transformation!",
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
                "We’re here to teach you how to choose the perfect pieces and create outfits that suit your unique personality. Together, we’ll enhance your wardrobe and refine your sense of fashion one stylish step at a time!",
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
                  )
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const style()),
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
                      "Start",
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