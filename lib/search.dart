import 'package:app_1/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  final int selectedIndex;

  const Search({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, List<String>>> styles = [
      {
        "Classic": [
          'image/trueStyle/c1.jpg',
          'image/trueStyle/c2.jpg',
          'image/trueStyle/c3.jpg',
          'image/trueStyle/c4.webp',
          'image/trueStyle/c5.jpg',
          'image/trueStyle/c6.jpg',
        ]
      },
      {
        "Casual": [
          'image/trueStyle/ca1.jpg',
          'image/trueStyle/ca2.jpg',
          'image/trueStyle/ca3.jpg',
          'image/trueStyle/ca4.jpg',
          'image/trueStyle/ca5.jpg',
          'image/trueStyle/ca6.jpg',
        ]
      },
      {
        "Streetwear": [
          'image/trueStyle/s1.jpg',
          'image/trueStyle/s2.jpg',
          'image/trueStyle/s3.jpg',
          'image/trueStyle/s4.jpg',
          'image/trueStyle/s5.jpg',
          'image/trueStyle/s6.jpg',
        ]
      },
      {
        "Minimalist": [
          'image/trueStyle/m1.jpg',
          'image/trueStyle/m2.jpg',
          'image/trueStyle/m3.jpg',
          'image/trueStyle/m4.jpg',
          'image/trueStyle/m5.jpg',
          'image/trueStyle/m6.jpg',
        ]
      },
      {
        "Business": [
          'image/trueStyle/b1.jpg',
          'image/trueStyle/b2.jpg',
          'image/trueStyle/b3.jpg',
          'image/trueStyle/b4.jpg',
          'image/trueStyle/b5.jpg',
          'image/trueStyle/b6.jpg',
        ]
      },
      {
        "Athleisure": [
          'image/trueStyle/a1.jpg',
          'image/trueStyle/a2.jpg',
          'image/trueStyle/a3.jpg',
          'image/trueStyle/a4.jpg',
          'image/trueStyle/a5.jpg',
          'image/trueStyle/a6.jpg',
        ]
      },
      {
        "Rugged": [
          'image/trueStyle/r1.jpg',
          'image/trueStyle/r2.jpg',
          'image/trueStyle/r3.jpg',
          'image/trueStyle/r4.jpg',
          'image/trueStyle/r5.webp',
          'image/trueStyle/r6.jpg',
        ]
      },
      {
        "Preppy": [
          'image/trueStyle/p1.jpg',
          'image/trueStyle/p2.webp',
          'image/trueStyle/p3.jpg',
          'image/trueStyle/p4.jpg',
          'image/trueStyle/p5.jpg',
          'image/trueStyle/p6.png',
        ]
      },
      {
        "Vintage": [
          'image/trueStyle/v1.jpg',
          'image/trueStyle/v2.jpg',
          'image/trueStyle/v3.jpg',
          'image/trueStyle/v4.jpg',
          'image/trueStyle/v5.jpg',
          'image/trueStyle/v6.jpg',
        ]
      }
    ];

    if (selectedIndex < 0 || selectedIndex >= styles.length) {
      return Scaffold(
        body: Center(
          child: Text(
            "Invalid style selection!",
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(fontSize: 24, color: Colors.red),
            ),
          ),
        ),
      );
    }

    String selectedStyleName = styles[selectedIndex].keys.first;
    List<String> selectedImages = styles[selectedIndex][selectedStyleName]!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8BFAA),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: selectedImages.length,
                itemBuilder: (context, i) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          selectedImages[i],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          ' $selectedStyleName piece',
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                fontSize: 16, color: Color(0xFF2d2d2d)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '\$100',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon:
                                      const Icon(FontAwesomeIcons.cartShopping),
                                  onPressed: () {},
                                ),
                                const SizedBox(width: 8),
                                const HeartButton(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeartButton extends StatefulWidget {
  const HeartButton({super.key});

  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  Color heartColor = Colors.grey;

  void changeColor() {
    setState(() {
      heartColor = heartColor == Colors.grey
          ? const Color.fromARGB(255, 167, 102, 97)
          : Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(FontAwesomeIcons.heart, color: heartColor),
        onPressed: changeColor,
      ),
    );
  }
}
