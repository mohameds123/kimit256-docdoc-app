import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';

class AppButton extends StatelessWidget {
  String buttonTxt;
  Function onPress;

  AppButton({super.key, required this.buttonTxt, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>onPress(),
      child: Container(
        width: 311.w,
        height: 52.h,
        decoration: BoxDecoration(
          color: ColorsManager.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(buttonTxt, style: TextStyling.white600size16),
        ),
      ),
    );
  }
}
