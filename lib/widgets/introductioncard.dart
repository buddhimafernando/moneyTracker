import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class IntroductionCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const IntroductionCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200.0, left: 20.0, right: 20.0),
      child: Container(
        child: Column(
          children: [
            Image.asset(imagePath),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Text(title, 
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
