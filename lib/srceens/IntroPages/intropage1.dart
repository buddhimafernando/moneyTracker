import 'package:flutter/material.dart';
import 'package:money_tracking/widgets/introductioncard.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          IntroductionCard(
            title: "Welcome to Money Tracking App",
            imagePath: "assets/introImages/intro1.png",
          ),
        ],
      ),
    );
  }
}