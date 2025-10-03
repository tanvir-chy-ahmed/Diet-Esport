import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class TenthScreen extends StatefulWidget {
  const TenthScreen({super.key});

  @override
  State<TenthScreen> createState() => _TenthScreenState();
}

class _TenthScreenState extends State<TenthScreen> {
  DateTime today = DateTime.now();

  // List of items
  List<String> items = [
    'si vglio correre dopo allenamento pesi',
    'No , non o mai tempo',
    'Mettimi la corsa in 1 giorno in cui non alleno ',
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
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.all(10.w),
                child: Column(
                  children: [
                    /// Banner image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        Images.two_Person_img,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: 20.h),

                    /// Custom Button
                    CustomButton(
                      widthPercent: 0.78,
                      heightPercent: 0.06,
                      color: const Color(0xFFE7DCCB),
                      text: "Inserisci il tuo mestiere",
                      onPressed: () {},
                      fontsize: 20,
                    ),

                    SizedBox(height: 15.h),

                    /// Question Text
                    Text(
                      "Si svolge su turni o giornata?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: Fonts.poppins,
                        fontSize: 16.sp,
                      ),
                    ),

                    SizedBox(height: 20.h),

                    /// Two Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          text: "SU TURNI",
                          onPressed: () {},
                          fontsize: 20,
                          heightPercent: 0.06,
                          widthPercent: 0.38,
                        ),
                        CustomButton(
                          text: "GIORNATA",
                          onPressed: () {},
                          heightPercent: 0.06,
                          color: const Color(0xFFFFE598),
                          widthPercent: 0.48,
                          fontsize: 20,
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    /// Dropdown menu
                    Container(
                      width: 0.85.sw,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFBCBCBC),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedItem,
                        hint: Text(
                          "TURNI POMERIGGIO QUANDO?",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: Fonts.poppins,
                            color: Colors.black,
                          ),
                        ),
                        dropdownColor: const Color(0xFF3D3B3B),
                        iconEnabledColor: Colors.black,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontFamily: Fonts.poppins,
                        ),
                        items: items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                        underline: const SizedBox(),
                      ),
                    ),

                    /// Calendar
                    Container(
                      margin: EdgeInsets.all(20.w),
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFFBCBCBC),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.r,
                            spreadRadius: 2,
                            offset: const Offset(3, 5),
                          ),
                        ],
                      ),
                      child: TableCalendar(
                        focusedDay: today,
                        firstDay: DateTime(2025),
                        lastDay: DateTime(2100),
                        selectedDayPredicate: (day) => isSameDay(day, today),
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            today = selectedDay;
                          });
                        },
                        calendarStyle: CalendarStyle(
                          defaultTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                          todayDecoration: BoxDecoration(
                            color: Colors.orange.shade300,
                            shape: BoxShape.circle,
                          ),
                          selectedDecoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          selectedTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                          markersMaxCount: 1,
                        ),
                        calendarBuilders: CalendarBuilders(
                          selectedBuilder: (context, date, _) {
                            return Center(
                              child: Container(
                                width: 32.w,
                                height: 32.w,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    "${date.day}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),
                    CustomButton(
                      widthPercent: 0.78,
                      heightPercent: 0.06,
                      color: const Color(0xFFBCBCBC),
                      text: "OPZIONI TURNI",
                      onPressed: () {},
                      fontsize: 20,
                    ),

                    SizedBox(height: 10.h),
                    CustomButton(
                      widthPercent: 0.78,
                      heightPercent: 0.1,
                      color: const Color(0xFFBCBCBC),
                      text:
                          "I miei turni di lavoro seguono unoschema fisso e si ripetono sempre nello stesso ordine.",
                      onPressed: () {},
                      fontsize: 16,
                    ),

                    SizedBox(height: 10.h),
                    CustomButton(
                      widthPercent: 0.78,
                      heightPercent: 0.1,
                      color: const Color(0xFFBCBCBC),
                      text:
                          "I miei turni di lavoro seguono unoschema fisso e si ripetono ",
                      onPressed: () {},
                      fontsize: 16,
                    ),

                    SizedBox(height: 50.h),
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
