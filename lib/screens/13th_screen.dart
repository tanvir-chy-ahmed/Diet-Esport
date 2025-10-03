import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirteenScreen extends StatefulWidget {
  const ThirteenScreen({super.key});

  @override
  State<ThirteenScreen> createState() => _ThirteenScreenState();
}

class _ThirteenScreenState extends State<ThirteenScreen> {
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

                  Spacer(),

                  /// Center Logo
                  Image.asset(
                    Images.logo_ic,
                    height: 80.h,
                    width: 80.w,
                    fit: BoxFit.cover,
                  ),

                  Spacer(),
                ],
              ),
            ),

            /// Rest of your page content
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///I want to train
                        CustomButton(
                          text: "Mi voglio allenare",
                          onPressed: () {},
                          fontsize: 15,
                          heightPercent: 0.06,
                          widthPercent: 0.45,
                        ),

                        ///I don't want to train
                        CustomButton(
                          text: "Non mi voglio allenare",
                          onPressed: () {},
                          fontsize: 15,
                          color: Color(0xFFE7DCCB),
                          widthPercent: 0.45,
                          heightPercent: 0.06,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///How Many Days Work
                        Text(
                          "Quanti giorni a\nsettimana? : ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: Fonts.montserrat,
                            fontSize: 15,
                          ),
                        ),

                        Row(
                          children: [
                            SlideBtn("3", () {
                              //sliding button on click
                            }),
                            SlideBtn("4", () {
                              //sliding button on click
                            }),
                          ],
                        ),

                        ///Advised
                        Text(
                          "Consigliato",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: Fonts.montserrat,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),

                    Image.asset(Images.gym_img,fit: BoxFit.cover,),
                    Image.asset(Images.gym_img2,fit: BoxFit.cover,),
                    SizedBox(height: 15.h,),
                    Text(
                      "In quali giorni ti vuoi allenare?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: Fonts.montserrat,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          text: "Consigliami",
                          onPressed: () {},
                          fontsize: 20,
                          color: Color(0xFFE7DCCB),
                          widthPercent: 0.45,
                          heightPercent: 0.06,
                        ),
                        ReplayBtn(onReplay: (){})
                      ],
                    ),
                    SizedBox(height: 20.h,),

                    ///LVGGMM
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WordContainer("L", (){},true),
                        WordContainer("m", (){},true),
                        WordContainer("m", (){},false),
                        WordContainer("g", (){},true),
                        WordContainer("V", (){},true),
                        WordContainer("S", (){},false),
                        WordContainer("D", (){},false),
                      ],
                    ),
                    SizedBox(height: 20.h,),
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

@override
Widget SlideBtn(String text, VoidCallback onClick) {
  return ElevatedButton(
    onPressed: onClick,
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFE7DCCB),
      shape: const CircleBorder(), // makes it round
      minimumSize: const Size(40, 40), // width & height
      padding: EdgeInsets.zero, // removes extra padding
    ),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontFamily: Fonts.poppins,
        fontSize: 24,
      ),
    ),
  );
}

@override
Widget WordContainer(String text, VoidCallback onClick,bool isColorYellow) {
  return ElevatedButton(
    onPressed: onClick,
    style: ElevatedButton.styleFrom(
      backgroundColor: isColorYellow ? Color(0xFFF4B701) : Color(0xFFE7DCCB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), // radius 20
      ),
      minimumSize: const Size(40, 40), // width & height
      padding: EdgeInsets.zero, // removes extra padding
    ),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        color: Colors.black,
        fontFamily: Fonts.poppins,
        fontSize: 24,
      ),
    ),
  );
}
