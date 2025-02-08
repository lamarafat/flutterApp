import 'package:app_1/cart.dart';
import 'package:app_1/favorite.dart';
import 'package:app_1/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Home extends StatelessWidget {
   Home({super.key});

  static const List<String> sections = [
    "Shirts",
    "Blouses",
    "Trousers",
    "Shorts",
    "Denim",
    "Suits",
    "Coats",
    "Jackets",
    "Shoes",
    "Bags & Wallets",
    "Accessories",
    "Perfumes",
    "True Style Outfits",
  ];

  static const List<String> images = [
    'image/trueStyle/outfit1.png',
    'image/trueStyle/outfit2.png',
    'image/trueStyle/outfit3.png',
    'image/trueStyle/outfit4.png',
    'image/trueStyle/outfit5.png',
  ];

  static const List<String> description = [
    "Your today's suggestion",
    "Your today's suggestion",
    "Your today's suggestion",
    "Your today's suggestion",
    "Your today's suggestion",
  ];

  final GlobalKey<ScaffoldState> LRA = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFE8BFAA),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage('image/trueStyle/user.png'),
                      ),
                    ),
                    Text(
                      "Heath Ledger",
                      style: TextStyle(fontSize: 16, color: Color(0xFF2d2d2d)),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: sections.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(
                      sections[i],
                      style: const TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      selectedIndex.value = i;
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xffEAEAEA),
          title: const Center(
            child: Text(
              "True Style",
              style: TextStyle(fontSize: 32, color: Colors.black),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Iconsax.menu),
            onPressed: () {
              LRA.currentState?.openDrawer();
            },
          ),
          actions: const [
            Row(
              children: [
                Icon(Iconsax.notification),
                Icon(Icons.more_vert),
              ],
            )
          ],
        ),
        backgroundColor: const Color(0xffEAEAEA),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, i) {
                return Card(
                  color: const Color(0xFFE8BFAA),
                  child: Column(
                    children: [
                      Text(
                        description[i],
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(images[i]),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildCategory('NEW IN', 'image/trueStyle/new.png'),
                        _buildCategory('SALE', 'image/trueStyle/sale.png'),
                        _buildCategory('Tops', 'image/trueStyle/tops.png'),
                        _buildCategory('Bottoms', 'image/trueStyle/bottoms.png'),
                        _buildCategory('Shoes', 'image/trueStyle/shoes.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, selectedIndexValue, _) {
            return WaterDropNavBar(
              backgroundColor: const Color(0xFFE8BFAA),
              onItemSelected: (int index) {
                selectedIndex.value = index;

                if (selectedIndex.value == 3) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const cart()),
                  );
                } else if (selectedIndex.value == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Favorite()),
                  );
                } else if (selectedIndex.value == 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(selectedIndex: selectedIndex.value),
                    ),
                  );
                }
              },
              selectedIndex: selectedIndexValue,
              barItems:  <BarItem>[
                BarItem(
                  filledIcon: Iconsax.home,
                  outlinedIcon: Iconsax.home_1,
                ),
                BarItem(
                  filledIcon: Iconsax.search_favorite,
                  outlinedIcon: Iconsax.search_favorite1,
                ),
                BarItem(
                  filledIcon: Icons.favorite_rounded,
                  outlinedIcon: Icons.favorite_border_rounded,
                ),
                BarItem(
                  filledIcon: Iconsax.shopping_bag,
                  outlinedIcon: Iconsax.shopping_bag1,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategory(String title, String imagePath) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(imagePath, width: 64, height: 64),
        ),
        Text(
          title,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontSize: 16, color: Color(0xFF2d2d2d)),
          ),
        ),
      ],
    );
  }
}
