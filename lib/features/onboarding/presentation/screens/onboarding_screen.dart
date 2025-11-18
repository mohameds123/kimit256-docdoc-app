import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/widgets/app_button.dart';
import 'package:kimit256docdoc/features/onboarding/presentation/widgets/doctor_widget.dart';
import 'package:kimit256docdoc/features/onboarding/presentation/widgets/header_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
              AppButton(buttonTxt: "Get Started", onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
