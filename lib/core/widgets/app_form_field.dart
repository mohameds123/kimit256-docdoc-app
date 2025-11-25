import 'package:flutter/material.dart';

import '../colors/colors_manager.dart';

class AppFormField extends StatelessWidget {
  TextEditingController textEditingController;
  String hintTxt;
   AppFormField({super.key,required this.textEditingController, required this.hintTxt});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: textEditingController,

      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.fillColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: ColorsManager.borderColor, width: 0.5)),
        hintText: hintTxt,
        hintStyle: TextStyle(
          color: ColorsManager.hintColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
