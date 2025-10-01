import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/material.dart';

class OnboradingScreen extends StatelessWidget {
  final VoidCallback onNext;

  const OnboradingScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gym Men Image
          Stack(
            alignment: Alignment.topRight,
            children: [
              //Gym Image
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(Images.onb_img, fit: BoxFit.cover),
              ),

              //IT Text with Box
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(
                      8,
                    ), // optional rounded corners
                  ),
                  child: Text(
                    "IT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: Fonts.poppins,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),

          //Gradient Bottom to top
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, // bottom (solid black)
                    Colors.black.withOpacity(0.9), // darker fade
                    Colors.black.withOpacity(0.7), // lighter fade
                    Colors.transparent, // fully blended top
                  ],
                  stops: [0.0, 0.4, 0.7, 1.0], // controls smoothness
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),

          //Center Logo
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  Images.elipse_ic,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(Images.logo_ic, height: 405, width: 405),
              ],
            ),
          ),

          // Get Started Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100, left: 24, right: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: onNext, // Logics Of Get Started Button
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4B701), // button color
                      foregroundColor: Colors.black,       // text color
                      minimumSize: Size(MediaQuery.of(context).size.width / 2, 55), // width & height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.poppins,
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: Fonts.poppins,
                    ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
