import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/material.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Coming Soon \n\t\t\t\t__Tanvir',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: Fonts.poppins,
          ),
        ),
      ),
    );
  }
}
