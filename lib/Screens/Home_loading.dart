
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding _screen.dart';
import 'onboarding_screen_four.dart';
import 'onboarding_screen_three.dart';
import 'onboarding_screen_two.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Stack(
          children: [
            PageView(
              controller: _controller,
              children:  const [
                OnboardingScreen(),
                OnboardingScreenTwo(),
                OnboardingScreenThree(),
                OnboardingScreenFour(),
              ],
            ),
            Positioned(
              top: 650.h,
              left: 150.w,
              child: SmoothPageIndicator(controller: _controller, count: 4,
                effect: ExpandingDotsEffect(
                    activeDotColor: Colors.amber,
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                    dotColor: Colors.black12
                ),
              ),
            ),

          ],
        )

    );
  }
}
