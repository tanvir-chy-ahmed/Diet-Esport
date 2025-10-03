import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TwelveScreen extends StatelessWidget {
  const TwelveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF171717),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Custom AppBar as Body
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
                padding: EdgeInsets.all(10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    Image.asset(Images.person, fit: BoxFit.cover),
                    SizedBox(height: 30.h),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Question
                          Text(
                            "Quanti passi svolgi mediamente nei giorni lavorativi?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                            decoration: InputDecoration(
                              hintText: "Es. 5654",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.sp,
                              ),
                              filled: true,
                              fillColor: Colors.grey[800],
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.h,
                                horizontal: 16.w,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),

                          // Second Question
                          Text(
                            "Quanti passi svolgi mediamente nei giorni in sui pop lavori?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                            decoration: InputDecoration(
                              hintText: "Es. 12.469",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.sp,
                              ),
                              filled: true,
                              fillColor: Colors.grey[800],
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 12.h,
                                horizontal: 16.w,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ],
                      ),
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
