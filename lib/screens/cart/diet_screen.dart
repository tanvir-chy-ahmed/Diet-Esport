import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/components/replay_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DietCartScreen extends StatefulWidget {
  const DietCartScreen({super.key});

  @override
  State<DietCartScreen> createState() => _DietCartScreenState();
}

class _DietCartScreenState extends State<DietCartScreen> {
  int cartItem = 0;

  Future<void> increament() async {
    setState(() {
      cartItem++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171717),
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
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Fast Food",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontFamily: Fonts.poppins,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(thickness: 0.8.h, color: const Color(0xFF484848)),
              SizedBox(height: 10.h),
              SingleCartItem(
                name: "Hamburger",
                images: Images.burger,
                onNext: () {},
              ),
              Divider(thickness: 0.8.h, color: const Color(0xFF484848)),
              SingleCartItem(
                name: "French Fries",
                images: Images.frenchFries,
                onNext: () {},
              ),
              Divider(thickness: 0.8.h, color: const Color(0xFF484848)),
              SingleCartItem(
                name: "Hot Dog",
                images: Images.hotDog,
                onNext: () {},
              ),
              Divider(thickness: 0.8.h, color: const Color(0xFF484848)),
              SingleCartItem(
                name: "Chicken",
                images: Images.chicken,
                onNext: () {},
              ),
              Divider(thickness: 0.8.h, color: const Color(0xFF484848)),
              SingleCartItem(
                name: "Coca Cola",
                images: Images.coc,
                onNext: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleCartItem extends StatelessWidget {
  final String name;
  final String images;
  final VoidCallback onNext;

  const SingleCartItem({
    super.key,
    required this.name,
    required this.images,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNext,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(images, height: 130.h, width: 130.w, fit: BoxFit.cover),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontFamily: Fonts.poppins,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 40.h,
                      width: 70.w,
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
                          "Kcal",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: Fonts.poppins,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 33.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF383838),
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
                      "Inserisci nella dieta",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: Fonts.poppins,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  height: 35.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xFF4E4E4E),
                      width: 1.w,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "-",
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "+",
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
