import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/text_style.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome Back",
          style: TextStyling.blue700size24,
        ),
        SizedBox(
          width: 20.w,
        ),
        Text("We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: TextStyling.gray400size14,
        ),
      ],
    );
  }
}
