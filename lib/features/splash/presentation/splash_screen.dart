import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';
import '../../onboarding/presentation/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // layer1
          Center(
            child: SvgPicture.asset(
              "assets/images/splash_background_image.svg",
            ),
          ),
          //layer2
          Padding(
            padding:  EdgeInsets.only(top: 380.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/splash_docdoc_logo.svg"),
                SizedBox(width: 12.w),
                Text("Doc Doc", style: TextStyling.black700size30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
