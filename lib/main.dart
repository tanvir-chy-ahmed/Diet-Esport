import 'package:diet_esports/screens/13th_screen.dart';
import 'package:diet_esports/screens/5th_Gym_Men.dart';
import 'package:diet_esports/screens/6th_Calorie_Details.dart';
import 'package:diet_esports/screens/9th_before_after.dart';
import 'package:diet_esports/screens/cart/diet_screen.dart';
import 'package:diet_esports/screens/home_screen.dart';
import 'package:diet_esports/screens/login/login_screen.dart';
import 'package:diet_esports/screens/onboard/controller/onb_ctrl.dart';
import 'package:diet_esports/screens/onboard/onb_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/login/signin_screen.dart';

void main(){
  runApp(MainScreen());
}



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // 👈 use your base design size (e.g., iPhone 12 mockup size)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      // child: const OnboardingCtrl(), // 👈 replace with your first screen
      child: const TransformationScreen(),
    );
  }
}
