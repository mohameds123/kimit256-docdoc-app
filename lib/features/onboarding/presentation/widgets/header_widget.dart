import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styling/text_style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/splash_docdoc_logo.svg",
          width: 38,
          height: 35,
        ),
        SizedBox(width: 12.w),
        Text("Doc Doc", style: TextStyling.black700size24),
      ],
    );
  }
}
