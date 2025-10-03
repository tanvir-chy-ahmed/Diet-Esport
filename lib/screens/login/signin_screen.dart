import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/custom_btn.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:diet_esports/navigation/bnview.dart';
import 'package:diet_esports/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // Controllers
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController phnCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  final TextEditingController confirmPassCtrl = TextEditingController();

  // FocusNodes
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phnFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
  final FocusNode confirmpassFocusNode = FocusNode();

  // Scroll controller
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Listeners to show/hide clear buttons
    emailCtrl.addListener(() => setState(() {}));
    nameCtrl.addListener(() => setState(() {}));
    phnCtrl.addListener(() => setState(() {}));
    passCtrl.addListener(() => setState(() {}));
    confirmPassCtrl.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    nameCtrl.dispose();
    phnCtrl.dispose();
    passCtrl.dispose();
    confirmPassCtrl.dispose();

    emailFocusNode.dispose();
    nameFocusNode.dispose();
    phnFocusNode.dispose();
    passFocusNode.dispose();
    confirmpassFocusNode.dispose();

    _scrollController.dispose();

    super.dispose();
  }

  // Helper to scroll to the focused field
  void _scrollToFocus(FocusNode focusNode) {
    if (focusNode.context == null) return; // Safety check

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final object = focusNode.context?.findRenderObject();
      if (object != null) {
        Scrollable.ensureVisible(
          focusNode.context!,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: 0.3, // adjust where the field appears on screen
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Gym Image
          SizedBox(
            height: 0.55.sh,
            width: 1.sw,
            child: Image.asset(Images.onb_img, fit: BoxFit.cover),
          ),

          // Gradient Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.66.sh,
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
              padding: EdgeInsets.only(top: 40.h),
              child: Image.asset(
                Images.logo_square_ic,
                height: 405.h,
                width: 405.w,
              ),
            ),
          ),

          // Form Fields
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 0.300.sh),

                  // Full Name
                  CustomTextField(
                    dialer: false,
                    hintText: "Nome Completo",
                    focusNode: nameFocusNode,
                    controller: nameCtrl,
                    prefixIcon: Icons.person,
                    onFieldSubmitted: () {
                      FocusScope.of(context).requestFocus(phnFocusNode);
                      _scrollToFocus(phnFocusNode);
                    },
                  ),
                  SizedBox(height: 15.h),

                  // Phone
                  CustomTextField(
                    dialer: true,
                    hintText: "Numero di Telefono",
                    focusNode: phnFocusNode,
                    controller: phnCtrl,
                    prefixIcon: Icons.dialer_sip,
                    onFieldSubmitted: () {
                      FocusScope.of(context).requestFocus(emailFocusNode);
                      _scrollToFocus(emailFocusNode);
                    },
                  ),
                  SizedBox(height: 15.h),

                  // Email
                  CustomTextField(
                    dialer: false,
                    hintText: "Indirizzo Email",
                    focusNode: emailFocusNode,
                    controller: emailCtrl,
                    prefixIcon: Icons.email_outlined,
                    onFieldSubmitted: () {
                      FocusScope.of(context).requestFocus(passFocusNode);
                      _scrollToFocus(passFocusNode);
                    },
                  ),
                  SizedBox(height: 15.h),

                  // Password
                  CustomTextField(
                    obscureText: true,
                    dialer: false,
                    hintText: "Password",
                    focusNode: passFocusNode,
                    controller: passCtrl,
                    prefixIcon: Icons.lock_outline,
                    onFieldSubmitted: () {
                      FocusScope.of(context).requestFocus(confirmpassFocusNode);
                      _scrollToFocus(confirmpassFocusNode);
                    },
                  ),
                  SizedBox(height: 15.h),

                  // Confirm Password
                  CustomTextField(
                    obscureText: true,
                    dialer: false,
                    hintText: "Conferma Password",
                    focusNode: confirmpassFocusNode,
                    controller: confirmPassCtrl,
                    prefixIcon: Icons.lock_outline,
                    onFieldSubmitted: () {
                      confirmpassFocusNode.unfocus(); // Close keyboard
                    },
                  ),
                  SizedBox(height: 80.h), // extra space for keyboard
                ],
              ),
            ),
          ),

          // Get Started Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    text: "Accedi",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()),
                      );
                    },
                    fontsize: 22,
                    heightPercent: 0.07,
                    widthPercent: 0.7,
                  ),
                  SizedBox(height: 15.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Hai un account? Accedi qui',
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

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final bool dialer;
  final String hintText;
  final FocusNode focusNode;
  final TextEditingController controller;
  final IconData prefixIcon;
  final VoidCallback? onFieldSubmitted;

  const CustomTextField({
    super.key,
    this.obscureText = false,
    this.dialer = false,
    required this.hintText,
    required this.focusNode,
    required this.controller,
    required this.prefixIcon,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.37.sh,
      height: 60.h,
      child: TextField(
        obscureText: obscureText,
        obscuringCharacter: "*",
        controller: controller,
        focusNode: focusNode,
        keyboardType: dialer ? TextInputType.phone : TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
          prefixIcon: Icon(prefixIcon, color: const Color(0xFFBABABA)),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
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
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
        style: TextStyle(fontSize: 16.sp),
        textInputAction: TextInputAction.next,
        cursorColor: Colors.blue,
        onEditingComplete: onFieldSubmitted,
      ),
    );
  }
}
