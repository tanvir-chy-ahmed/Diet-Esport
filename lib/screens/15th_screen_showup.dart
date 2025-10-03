import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiftheenScreen extends StatefulWidget {
  const FiftheenScreen({super.key});

  @override
  State<FiftheenScreen> createState() => _FiftheenScreenState();
}

class _FiftheenScreenState extends State<FiftheenScreen> {
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
      // backgroundColor: Colors.white,
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
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(Images.gym_1, fit: BoxFit.cover),
                        ),

                        /// Dropdown Positioned at Bottom Center
                        Positioned(
                          bottom: 16, // distance from bottom
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.2,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFF4B701), // button background
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: selectedItem,
                                hint: Text(
                                  textAlign: TextAlign.center,
                                  "AVANZATO",
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
                                      : Colors.black,
                                  fontFamily: Fonts.poppins,
                                ),
                                items: items.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors
                                            .white, // dropdown menu items color
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
