import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({super.key});

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF171717),
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        Images.image_11,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: 12.h),

                    /// Title
                    Text(
                      "Quante diete alterni durante la settimana?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.montserrat,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 16.h),

                    /// Option 1
                    _buildOptionCard(
                      "1. dieta con sempre la stessa quantita di cibo sia nei giorni in cui mi alleno che non mi alleno.",
                    ),

                    SizedBox(height: 14.h),

                    /// Option 2
                    _buildOptionCard(
                      "2. dieta con sempre la stessa quantita di cibo sia nei giorni in cui mi alleno che non mi alleno.",
                    ),

                    SizedBox(height: 14.h),

                    /// Option 3
                    _buildOptionCard(
                      "3. dieta con sempre la stessa quantita di cibo sia nei giorni in cui mi alleno che non mi alleno.",
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

  /// Reusable card widget (more responsive)
  Widget _buildOptionCard(String text) {
    return Container(
      padding: EdgeInsets.all(12.w),
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 80.h, // responsive min height
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFBCBCBC),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: Fonts.montserrat,
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
