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
  var boxColor = MainColors.brownCoffeeMilk;
  double boxX = -1;
  double boxY = -1;


  void _expandedBox() {
    setState(() {
      boxWeight = 300;
      boxWidth = 300;
    });
  }

  void _changeColor() {
    setState(() {
      boxColor = MainColors.brown1;
    });
  }

   void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
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
            alignment: Alignment(boxX, boxY),
            child: Container(
              height: boxWeight,
              width: boxWidth,
              color: boxColor,
            ),
          ),
         
        ),
       
        
      ),
      
    );
  }
}
