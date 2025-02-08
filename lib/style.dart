import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_1/Home.dart';

class style extends StatelessWidget {
  const style({super.key});
  static const List<String> images = [
    'image/trueStyle/style1.png',
    'image/trueStyle/style2.png',
    'image/trueStyle/style3.png',
    'image/trueStyle/style4.png',
    'image/trueStyle/style5.png',
    'image/trueStyle/style6.png',
    'image/trueStyle/style7.png',
    'image/trueStyle/style8.png',
    'image/trueStyle/style9.png',
  ];

  static const List<String> styles = [
    "Classic",
    "Casual",
    "Streetwear",
    "Minimalist",
    "Business",
    "Athleisure",
    "Rugged",
    "Preppy",
    "Vintage",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEAEAEA),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(), 
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Next",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffEAEAEA),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Choose your favorite style",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: styles.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 252, 204, 204),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage(images[i]),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            styles[i],
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please select a style before continuing!"),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              child: Text(
                "Done",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
