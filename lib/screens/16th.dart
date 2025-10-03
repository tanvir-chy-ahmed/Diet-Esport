import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GymEquipment extends StatefulWidget {
  const GymEquipment({super.key});

  @override
  State<GymEquipment> createState() => _GymEquipmentState();
}

class _GymEquipmentState extends State<GymEquipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF171717),
      body: SafeArea(
        child: Column(
          children: [
            /// Custom AppBar as Body
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
                    iconSize: 28.sp, // responsive icon size
                  ),

                  /// Center Logo
                  Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    // responsive left spacing
                    child: Image.asset(
                      Images.logo_ic,
                      height: 60.h,
                      width: 60.w,
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
                padding: EdgeInsets.all(10.w),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            Images.gym_equipment,
                            width: double.infinity,
                            height:
                                MediaQuery.of(context).size.height /
                                1.5, // responsive height
                            fit: BoxFit.cover,
                          ),
                        ),

                        /// Dropdown Positioned at Bottom Center
                        Positioned(
                          bottom: 40.h, // responsive distance from bottom
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back_ios_sharp,
                                  size: 26.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              CustomButton(
                                text: "PECTORAL FLY",
                                onPressed: () {},
                                fontsize: 16, // responsive text size
                              ),
                              SizedBox(width: 8.w),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 26.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
