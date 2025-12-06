import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';
import 'package:kimit256docdoc/features/home/data/home_model.dart';

class DoctorWidget extends StatelessWidget {
  final Doctors doctors;
   DoctorWidget({super.key , required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 126.h,
      child: Row(
        spacing: 16.w,
        children: [
          Image.asset("assets/images/doc_test_image.png"),
          Padding(
            padding: EdgeInsets.only(top: 32.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctors.name!, style: TextStyling.black700size16),
                Text(doctors.specialization!.name!, style: TextStyling.gray400size12),
                Row(
                  spacing: 6.w,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16.w),
                    Text(doctors.appointPrice.toString(), style: TextStyling.gray400size12),
                    Text("(400)", style: TextStyling.gray400size12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
