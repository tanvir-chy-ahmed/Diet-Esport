import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GymMen extends StatelessWidget {
  const GymMen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF171717),
      body: SafeArea(
        child: Column(
          children: [
            // Custom AppBar as Body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Back Button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),

                  /// Center Logo
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Image.asset(
                      Images.logo_ic,
                      height: 80.h,
                      width: 80.w,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// Replay Button
                  ReplayBtn(onReplay: () {}),
                ],
              ),
            ),

            /// Rest of your page content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Guarda il video per capire come prendere le misure conettamente. E essenziale per il confronto successivo.",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),

                    SizedBox(height: 40.h),
                    Image.asset(Images.men),
                    SizedBox(height: 30.h),
                    CustomButton(
                      text: "Ho capito. Toma alle misure",
                      color: Color(0xFFF4B701),
                      onPressed: () {},
                      fontsize: 18,
                      heightPercent: 0.06,
                      // 8% of screen height
                      widthPercent: 0.9, // 90% of screen width
                    ),
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


