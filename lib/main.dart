import 'package:diet_esports/demo/sliderDemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      // 👈 use your base design size (e.g., iPhone 12 mockup size)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: child);
      },
      // child: const OnboardingCtrl(), // 👈 replace with your first screen
      child: const DemoSlider(),
      //DemoSlider(),
    );
  }
}


