import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:diet_esports/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransformationScreen extends StatefulWidget {
  const TransformationScreen({super.key});

  @override
  State<TransformationScreen> createState() => _TransformationScreenState();
}

class _TransformationScreenState extends State<TransformationScreen> {
  bool isMale = false; // state variable
  bool isFeMale = false; // state variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171717),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            const Spacer(),
            ReplayBtn(onReplay: () {}),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Dates Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "19-09-2025",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.poppins,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    "19-12-2025",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.poppins,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              /// Transformation Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  Images.transformation_img,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.h),

              /// Weight & Height Row
              Row(
                children: [
                  Expanded(
                    child: _infoBox("70.0kg"),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _infoBox("170.0cl"),
                  ),
                ],
              ),
              SizedBox(height: 5.h),

              /// Small labels under boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "es. 80",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.montserrat,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    "es. 174",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.montserrat,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),

              /// Video Containers
              VideosContainer(
                onPlay1: () {},
                name1: 'collo',
                mesurementName1: '40.0cm',
                onPlay2: () {},
                name2: 'glutei/fianchi',
                mesurementName2: '96.0cm',
                isTwoContainer: true,
              ),
              SizedBox(height: 16.h),
              VideosContainer(
                onPlay1: () {},
                name1: 'petto',
                mesurementName1: '90.0cm',
                onPlay2: () {},
                name2: 'vita',
                mesurementName2: '75.0cm',
                isTwoContainer: true,
              ),
              SizedBox(height: 20.h),

              /// Button
              CustomButton(
                heightPercent: 0.065,
                widthPercent: 0.85,
                text: "Pannello di controllo",
                color: const Color(0xFFE7DCCB),
                onPressed: () {},
                fontsize: 15,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoBox(String text) {
    return Container(
      height: 42.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF4B701),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15.sp,
            fontFamily: Fonts.poppins,
          ),
        ),
      ),
    );
  }
}
