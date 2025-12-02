import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({super.key});

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
                Text("Doc Name", style: TextStyling.black700size16),
                Text("General", style: TextStyling.gray400size12),
                Row(
                  spacing: 6.w,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16.w),
                    Text("4.8", style: TextStyling.gray400size12),
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
