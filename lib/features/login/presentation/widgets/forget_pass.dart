import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors/colors_manager.dart';
import '../../../../core/styling/text_style.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckboxTheme(
          data: CheckboxThemeData(
            side:  BorderSide(color: Colors.grey,width:1.5.w ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),    // optional
            ),
          ),
          child: Checkbox(
            checkColor: Colors.white,
            activeColor: ColorsManager.primaryColor,

            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        Text("Remember me",style: TextStyling.gray400size12,),
        Spacer(),
        Text("Forgot Password?",
          style: TextStyling.blue400size12,
        )

      ],
    );

  }
}
