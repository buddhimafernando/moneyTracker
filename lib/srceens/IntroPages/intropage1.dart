import 'package:flutter/material.dart';
import 'package:money_tracking/srceens/home.dart';
import 'package:money_tracking/widgets/custom_button.dart';
import 'package:money_tracking/widgets/introductioncard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();

    return Scaffold(
      body: Column(
        children:[
        Expanded(
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: const [
              IntroductionCard(
                title:
                    "Empowering you to take control of your expenses and simplify your financial journey!",
                imagePath: "assets/introImages/intro1.png",
              ),
              IntroductionCard(
                title:
                    "Plan, track, and stay within your budget effortlessly. ",
                imagePath: "assets/introImages/intro2.png",
              ),
              IntroductionCard(
                title:
                    "Unlock the power of easy expense tracking. Your financial freedom is just a scan away!",
                imagePath: "assets/introImages/intro3.png",
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 30.0,bottom: 40.0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3, // Update count to match number of pages
              effect: ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 0, 100, 0),
                dotColor: Color.fromARGB(255, 202, 202, 202),
                dotHeight: 9,
                dotWidth: 9,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: CustomButton(
              page: const Home(),
              text: "Continue"),
          )
        ]
      ),
    );
  }
}
