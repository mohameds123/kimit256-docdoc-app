import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/widgets/app_button.dart';
import 'package:kimit256docdoc/features/login/presentation/screens/login_screen.dart';
import 'package:kimit256docdoc/features/onboarding/presentation/widgets/doctor_widget.dart';
import 'package:kimit256docdoc/features/onboarding/presentation/widgets/header_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  Future saveOnBoardingKey(BuildContext context)async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0.h),
          child: Column(
            children: [
              HeaderWidget(),
              SizedBox(height: 22.h),
              DoctorWidget(),
              SizedBox(height: 24.h),
              AppButton(
                  buttonTxt: "Get Started", onPress: ()async{
                final SharedPreferences prefs = await SharedPreferences.getInstance();
                final x = await prefs.setBool('see_onboarding', true);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

                print("=============$x");
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
