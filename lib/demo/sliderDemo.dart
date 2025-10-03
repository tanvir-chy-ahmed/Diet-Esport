import 'package:diet_esports/screens/10th+11th.dart';
import 'package:diet_esports/screens/12th_step_cont.dart';
import 'package:diet_esports/screens/13th_screen.dart';
import 'package:diet_esports/screens/14th_walking.dart';
import 'package:diet_esports/screens/4th_Screen.dart';
import 'package:diet_esports/screens/5th_Gym_Men.dart';
import 'package:diet_esports/screens/6th_Calorie_Details.dart';
import 'package:diet_esports/screens/9th_before_after.dart';
import 'package:diet_esports/screens/login/login_screen.dart';
import 'package:diet_esports/screens/login/signin_screen.dart';
import 'package:diet_esports/screens/onboard/onb_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DemoSlider extends StatefulWidget {
  const DemoSlider({super.key});

  @override
  _DemoSliderState createState() => _DemoSliderState();
}

class _DemoSliderState extends State<DemoSlider> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  bool isLoading = true;
  bool showOnboarding = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: [
              OnboradingScreen(onNext: () {}),
              LoginScreen(),
              SignInScreen(),
              HomeScreen(),
              GymMen(),
              SixthScreen(),
              TransformationScreen(),
              TenthScreen(),
              TwelveScreen(),
              ThirteenScreen(),
              WalkingScreen(),
            ],
          ),

          // Dot Indicator
          Positioned(
            bottom: 170,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 11,
                effect: WormEffect(
                  activeDotColor: Colors.white,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
