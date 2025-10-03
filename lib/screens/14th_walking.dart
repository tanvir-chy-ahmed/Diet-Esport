import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalkingScreen extends StatefulWidget {
  const WalkingScreen({super.key});

  @override
  State<WalkingScreen> createState() => _WalkingScreenState();
}

class _WalkingScreenState extends State<WalkingScreen> {
  // List of items
  List<String> items = [
    'si vglio correre dopo allenamento pesi',
    'No , non o mai tempo',
    'Mettimi la corsa in 1 giorno in cui non alleno ',
    'Mettimi la corsa di sabato',
    "mettimi la corsa di domenica",
  ];

  // Selected item
  String? selectedItem;

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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Images.walking_img, fit: BoxFit.cover),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Hai tempo di correre dopo allenamento pesi?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: Fonts.poppins,
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 20.h),

                    ///if (selectedItem == 'Banana') selectedItem = null;
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFBCBCBC), // button background
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedItem,
                        hint: Text(
                          "clicca e scegli quando correre",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: Fonts.poppins,
                            color: Colors.black, // hint text
                          ),
                        ),
                        dropdownColor: Color(0xFF3D3B3B),
                        // dropdown background
                        iconEnabledColor: Colors.black,
                        // arrow color
                        style: TextStyle(
                          fontSize: 18,
                          color: selectedItem != null
                              ? Colors.black
                              : Colors
                                    .black, // selected item text color (on button)
                          fontFamily: Fonts.poppins,
                        ),
                        items: items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 18,
                                color:
                                    Colors.white, // dropdown menu items color
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                        underline: SizedBox(), // removes underline
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
