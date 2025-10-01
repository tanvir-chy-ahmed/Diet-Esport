import 'package:diet_esports/screens/onboard/controller/onb_ctrl.dart';
import 'package:diet_esports/screens/onboard/onb_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MainScreen());
}



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingCtrl()
      ,
    );
  }
}
