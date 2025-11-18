import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styling/text_style.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //layer1
        SvgPicture.asset("assets/images/splash_background_image.svg"),
        //layer2
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor_image.png'),
        ),
        //layer3
        Positioned(
          top: 440.h,
          left: 60.w,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyling.blue700size32,
          ),
        ),
      ],
    );
  }
}
