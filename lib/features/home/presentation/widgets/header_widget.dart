import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
   String? userName;
  Future <String> getUserName ()async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   userName =  prefs.getString("userName");
   print("GET USER NAME $userName");
   return userName!;
  }
  @override
  void initState()async {
    super.initState();
    await getUserName();
  }
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Column(
          children: [
            Text("Hi, $userName",
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
