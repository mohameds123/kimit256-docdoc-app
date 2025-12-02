import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("Hi, Omar!",
            style: TextStyling.black700size18,
            ),
            Text("How Are you Today?",
              style: TextStyling.gray400size11,
            ),
          ],
        ),
        Spacer (),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.hintColor
          ),
          child: Icon(Icons.notifications_none),
        ),
      ],
    );
  }
}
