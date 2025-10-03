import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalkScreen extends StatelessWidget {
  const WalkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      body: Center(
        child: Text(
          'Coming Soon \n\t\t\t\t__Tanvir',
          style: TextStyle(
            fontSize: 30.sp,
            color: Colors.white,
            fontFamily: Fonts.poppins,
          ),
        ),
      ),
    );
  }
}
