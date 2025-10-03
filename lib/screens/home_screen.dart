import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false; // state variable
  bool isFeMale = false; // state variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171717),
        elevation: 0,
        automaticallyImplyLeading: false, // Prevents default back button
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),

            const Spacer(), // Pushes the title to the center
            // Title
            Text(
              "Daniele, indica il sesso",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: Fonts.poppins,
                fontSize: 16.sp,
              ),
            ),

            const Spacer(), // Balances the row
            // Notification Icon
            Stack(
              children: [
                Image.asset(Images.profile_ic, height: 40.h, width: 40.w),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF2F80ED),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenderOption(
                    value: isMale,
                    label: "Uomo",
                    onChanged: (val) => setState(() => isMale = val ?? false),
                  ),
                  GenderOption(
                    value: isFeMale,
                    label: "Donna",
                    onChanged: (val) => setState(() => isFeMale = val ?? false),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Container(
                height: 40.h,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Color(0xFFF4B701),
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
                    "05/08/1981 anni 44",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: Fonts.poppins,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width * 0.42,
                    decoration: BoxDecoration(
                      color: Color(0xFFF4B701),
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
                        "70.0kg",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: Fonts.poppins,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width * 0.42,
                    decoration: BoxDecoration(
                      color: Color(0xFFF4B701),
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
                        "170.0cl",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: Fonts.poppins,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "es. 80",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.montserrat,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "es. 174",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.montserrat,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Text(
                "Scrivi le tue circonferenze vedi\n"
                "i video illustrativi!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              SizedBox(height: 20.h),
              // VideosContainer repeated
              VideosContainer(
                onPlay1: () {},
                name1: 'collo',
                mesurementName1: '40.0cm',
                onPlay2: () {},
                name2: 'glutei/fianchi',
                mesurementName2: '96.0cm',
                isTwoContainer: true,
              ),
              SizedBox(height: 15.h),
              VideosContainer(
                onPlay1: () {},
                name1: 'collo',
                mesurementName1: '40.0cm',
                onPlay2: () {},
                name2: 'glutei/fianchi',
                mesurementName2: '96.0cm',
                isTwoContainer: true,
              ),
              SizedBox(height: 15.h),
              VideosContainer(
                onPlay1: () {},
                name1: 'tarace',
                mesurementName1: '40.0cm',
                onPlay2: () {},
                name2: 'coscia',
                mesurementName2: '96.0cm',
                isTwoContainer: true,
              ),
              SizedBox(height: 15.h),
              VideosContainer(
                onPlay1: () {},
                name1: 'punto vita',
                mesurementName1: '40.0cm',
                onPlay2: () {},
                name2: 'braccio',
                mesurementName2: '96.0cm',
                isTwoContainer: false,
              ),
              SizedBox(height: 15.h),
              // Buttons
              CustomButton(
                heightPercent: 0.06,
                widthPercent: 0.80,
                text: "Pannello di controllo",
                color: Color(0xFFE7DCCB),
                onPressed: () {},
                fontsize: 15,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                heightPercent: 0.06,
                widthPercent: 0.80,
                text: "Controllo misure e compos. c DEXA",
                color: Color(0xFFF4B701),
                onPressed: () {},
                fontsize: 15,
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderOption extends StatelessWidget {
  final bool value;
  final String label;
  final ValueChanged<bool?> onChanged;

  const GenderOption({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontFamily: Fonts.poppins,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}

class VideosContainer extends StatelessWidget {
  final VoidCallback onPlay1;
  final VoidCallback onPlay2;
  final String name1;
  final String name2;
  final String mesurementName1;
  final String mesurementName2;
  final bool isTwoContainer;

  VideosContainer({
    super.key,
    required this.onPlay1,
    required this.name1,
    required this.mesurementName1,
    required this.mesurementName2,
    required this.name2,
    required this.onPlay2,
    required this.isTwoContainer,
  });

  @override
  Widget build(BuildContext context) {
    return isTwoContainer
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: onPlay1,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4B701),
                      foregroundColor: Colors.black,
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.4,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.poppins,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Keeps content compact
                      children: [
                        Text(
                          mesurementName1,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: Fonts.poppins,
                          ),
                        ),
                        SizedBox(width: 8),
                        // Space between text and icon
                        Icon(Icons.play_circle_outline_rounded, size: 20),
                        // You can change the icon
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    name1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.poppins,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: onPlay2,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4B701),
                      foregroundColor: Colors.black,
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.4,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.poppins,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Keeps content compact
                      children: [
                        Text(
                          mesurementName2,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: Fonts.poppins,
                          ),
                        ),
                        SizedBox(width: 8),
                        // Space between text and icon
                        Icon(Icons.play_circle_outline_rounded, size: 20),
                        // You can change the icon
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    name2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.poppins,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: onPlay1,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF4B701),
                        foregroundColor: Colors.black,
                        minimumSize: Size(
                          MediaQuery.of(context).size.width * 0.4,
                          MediaQuery.of(context).size.height * 0.05,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: Fonts.poppins,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // Keeps content compact
                        children: [
                          Text(
                            mesurementName1,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: Fonts.poppins,
                            ),
                          ),
                          SizedBox(width: 8),
                          // Space between text and icon
                          Icon(Icons.play_circle_outline_rounded, size: 20),
                          // You can change the icon
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      name1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: Fonts.poppins,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

                Spacer(),
              ],
            ),
          );
  }
}
