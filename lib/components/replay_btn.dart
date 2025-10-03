import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ReplayBtn extends StatefulWidget {
  final VoidCallback? onReplay;
  const ReplayBtn({super.key, required this.onReplay});

  @override
  State<ReplayBtn> createState() => _ReplayBtnState();
}

class _ReplayBtnState extends State<ReplayBtn> {

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF4B701), // same color
        shadowColor: Colors.black12,               // shadow color
        elevation: 4,                              // matches your BoxShadow blur
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r), // same radius
        ),
        minimumSize: Size(150.w, 50.h),           // same width & height
      ),
      onPressed: widget.onReplay  ?? (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Images.speak_ic,
            width: 22.sp,
            height: 22.sp,
          ),
          SizedBox(width: 8.w), // spacing between icon & text
          Text(
            "Replay",
            style: TextStyle(
              fontSize: 22.sp,
              fontFamily: Fonts.poppins,
              color: Colors.black, // match icon color if needed
            ),
          ),
        ],
      ),
    );
  }
}
