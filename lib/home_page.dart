import "package:animated_container/colors.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text("M A D E B Y D A N I ♥",
          style:TextStyle(
            color:MainColors.brownNude,
          ) ,),
        ),
      ),
      backgroundColor: MainColors.brownNude,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: MainColors.brownCoffeeMilk,
        ),
      ),
    );
  }
}
