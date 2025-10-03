import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DietChoose extends StatefulWidget {
  const DietChoose({super.key});

  @override
  State<DietChoose> createState() => _DietChooseState();
}

class _DietChooseState extends State<DietChoose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// Custom AppBar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Back Button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: 28.sp,
                  ),

                  /// Center Logo
                  Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    child: Image.asset(
                      Images.logo_ic,
                      height: 55.h,
                      width: 55.w,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// Replay Button
                  ReplayBtn(onReplay: () {}),
                ],
              ),
            ),

            /// Page Content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Main Image
                    ///
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
