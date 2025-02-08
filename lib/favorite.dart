import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8BFAA),
        title:  Text(
              "True Style",
              style: GoogleFonts.sedgwickAve(
                  textStyle: const TextStyle(fontSize: 32),
                  color: Colors.black),
            ),
        
      ),
      backgroundColor: const Color(0xFFE8BFAA),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Image.asset('image/trueStyle/empty.png'),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Your wishlist is empty",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Text(
                  "Explore more and shortlist your favorite items",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          fontSize: 16, color: Color(0xFF2d2d2d))),
                ),
                const SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: const Color(0xffFD9059),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 120.0),
                      child: Text(
                        "Start shopping",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
