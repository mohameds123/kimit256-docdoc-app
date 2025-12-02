import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';
import 'package:kimit256docdoc/features/home/presentation/widgets/header_widget.dart';

import '../widgets/banner_widget.dart';
import '../widgets/doctor_speciality_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            HeaderWidget(),
            SizedBox(
              height: 16.h,
            ),
            BannerWidget(),

            DoctorSpecialityWidget(),
          ],
        ),
      )
    );
  }
}
