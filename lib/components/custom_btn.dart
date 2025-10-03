import 'dart:ui';
import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double heightPercent;
  final double widthPercent;
  Color color;
  final int fontsize;
  final VoidCallback? onPressed;

  CustomButton({
    super.key,
    required this.text,
    this.color = const Color(0xFFF4B701), // ✅ default color
    required this.onPressed,
    required this.fontsize,
    this.heightPercent = 0.07, // 7% of screen height
    this.widthPercent = 0.5,   // 50% of screen width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widthPercent, // 85% of screen width
      height: MediaQuery.of(context).size.height * heightPercent, // responsive height
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ElevatedButton(
        onPressed: onPressed ?? ()async {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          textStyle: TextStyle(
            fontSize: fontsize.sp,
            fontFamily: Fonts.poppins,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: Fonts.poppins,
            fontSize: fontsize.sp
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
