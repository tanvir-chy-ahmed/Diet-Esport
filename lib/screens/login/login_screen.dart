import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/navigation/bnview.dart';
import 'package:diet_esports/screens/login/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();

  Future<void> testLogin() async {
    final email = emailController.text.trim();
    final pass = passController.text.trim();
    if (email == "Tanvir" && pass == "Tanvir") {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavBar()),
        );
      });
    } else {
      setState(() {
        // Button click logic
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Wrong Credential")));
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Add listener to update UI when text changes
    passController.addListener(() {
      setState(() {}); // Rebuilds to show/hide the clear button
    });
    emailController.addListener(() {
      setState(() {}); // Rebuilds to show/hide the clear button
    });
  }

  @override
  void dispose() {
    passController.dispose();
    passFocusNode.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // 👈 prevents shifting when keyboard open
      body: Stack(
        children: [
          // Gym Men Image
          Stack(
            alignment: Alignment.topRight,
            children: [
              // Gym Image
              SizedBox(
                height: 0.55.sh, // same as screenHeight / 1.8
                width: 1.sw, // full screen width
                child: Image.asset(Images.onb_img, fit: BoxFit.cover),
              ),
            ],
          ),

          // Gradient Bottom to top
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.66.sh, // same as screenHeight / 1.5
              width: 1.sw,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.4, 0.7, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),

          // Center Logo
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 100.h),
              child: Image.asset(
                Images.logo_square_ic,
                height: 405.h,
                width: 405.w,
              ),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 0.50.sh), // same as screenHeight / 1.7
                SizedBox(
                  width: 0.37.sh, // same as screenHeight / 2.7
                  height: 60.h,
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () {
                      FocusScope.of(
                        context,
                      ).requestFocus(passFocusNode); // moves focus
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xFFBABABA),
                      ),
                      suffixIcon: emailController.text.isNotEmpty
                          ? IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                emailController.clear();
                              },
                            )
                          : null,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    style: TextStyle(fontSize: 16.sp),
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.blue,
                  ),
                ),

                SizedBox(height: 20.h),
                SizedBox(
                  width: 0.37.sh,
                  height: 60.h,
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () {
                      passFocusNode.unfocus(); // hide keyboard
                    },
                    obscureText: true,
                    obscuringCharacter: "*",
                    controller: passController,
                    focusNode: passFocusNode,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFFBABABA),
                      ),
                      suffixIcon: passController.text.isNotEmpty
                          ? IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                passController.clear();
                              },
                            )
                          : null,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    style: TextStyle(fontSize: 16.sp),
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.blue,
                  ),
                ),
                SizedBox(height: 10.h),

                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontFamily: Fonts.montserrat,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Get Started Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 140.h, left: 20.w, right: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ///Login Button
                  CustomButton(
                    text: "Accedi",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    fontsize: 22,
                    heightPercent: 0.07,
                    widthPercent: 0.7,
                  ),
                  SizedBox(height: 15.h),

                  //New Register
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: Text(
                      'Non hai un account? Iscriviti qui',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontFamily: Fonts.montserrat,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
