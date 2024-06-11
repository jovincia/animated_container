import "package:animated_container/colors.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double boxWeight = 100;
  double boxWidth = 100;

  void _expandedBox() {
    setState(() {
      boxWeight = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandedBox,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "M A D E B Y D A N I ♥",
              style: GoogleFonts.calligraffitti(
                color: MainColors.brownNude,
              ),
            ),
          ),
        ),
        backgroundColor: MainColors.brownNude,
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 3),
            height: 200,
            width: 200,
            color: MainColors.brownCoffeeMilk,
          ),
        ),
      ),
    );
  }
}
