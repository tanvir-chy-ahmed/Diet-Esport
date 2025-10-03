import 'package:diet_esports/navigation/bnview.dart';
import 'package:diet_esports/screens/login/login_screen.dart';
import 'package:diet_esports/screens/onboard/onb_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingCtrl extends StatefulWidget {
  const OnboardingCtrl({super.key});

  @override
  State<OnboardingCtrl> createState() => _OnboardingCtrlState();
}

class _OnboardingCtrlState extends State<OnboardingCtrl> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  bool isLoading = true;
  bool showOnboarding = true;

  @override
  void initState() {
    super.initState();
    checkFirstTime();
  }

  Future<void> checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? alreadyOpened = prefs.getBool('isFirstTimeOpened');

    if (alreadyOpened != null && alreadyOpened == true) {
      setState(() {
        showOnboarding = false;
        isLoading = false;
      });
    } else {
      await prefs.setBool('isFirstTimeOpened', true);
      setState(() {
        showOnboarding = true;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!showOnboarding) {
      return BottomNavBar();
    }

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
              OnboradingScreen(
                onNext: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
