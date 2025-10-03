import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            ReplayBtn(onReplay: () {}),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.bg_screen),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),

                  // Info rows
                  InfoRow(
                    label: "MB Teorico",
                    value: "0,00kcal",
                    labelColor: Colors.red,
                    valueColor: Colors.red,
                  ),
                  InfoRow(label: "MB Reale", value: "0,00kcal"),
                  InfoRow(label: "FCG Teorico", value: "2057,15kcal"),
                  InfoRow(label: "FCG Reale", value: "0,00kcal"),
                  InfoRow(label: "BF%", value: "11,96%"),
                  InfoRow(label: "BF", value: "8,37Litri"),
                  InfoRow(label: "Liquido grassso", value: "0,84Litri"),
                  InfoRow(label: "Liquido extracellulare", value: "5,08Litri"),
                  InfoRow(label: "Massa+Glico", value: "61,63kg"),
                  InfoRow(label: "Glico", value: "0,92kg"),
                  InfoRow(label: "Acqua glico", value: "2,50Litri"),
                  InfoRow(label: "Massa-Glico", value: "59,13kg"),
                  InfoRow(label: "Totale-Liquidi", value: "10,53Litri"),
                  SizedBox(height: 20.h),

                  // Buttons row
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 55.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF4B701),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              textStyle: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: Fonts.poppins,
                              ),
                            ),
                            child: Text(
                              "Confronta \n misure e foto",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: SizedBox(
                          height: 55.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF4B701),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              textStyle: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: Fonts.poppins,
                              ),
                            ),
                            child: Text(
                              "Scatta Foto",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),

                  // Full-width button
                  Center(
                    child: SizedBox(
                      width: 0.9.sw,
                      height: 55.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF4B701),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: Fonts.poppins,
                          ),
                        ),
                        child: Text(
                          "Pannello di controllo",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Color labelColor;
  final Color valueColor;
  final double fontSize;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
    this.labelColor = Colors.white,
    this.valueColor = Colors.white,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              label,
              style: TextStyle(
                fontSize: fontSize.sp,
                fontWeight: FontWeight.w500,
                color: labelColor,
              ),
            ),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: fontSize.sp,
                fontWeight: FontWeight.bold,
                color: valueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
