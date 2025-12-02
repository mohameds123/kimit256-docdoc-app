import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';

class DoctorSpecialityWidget extends StatelessWidget {
   DoctorSpecialityWidget({super.key});
  List <String> imagesPaths = [
    "assets/images/doctor.png",
    "assets/images/brain.png",
    "assets/images/child.png",
    "assets/images/kidneys.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Doctor Speciality",style: TextStyling.black700size18,),
            Spacer(),
            TextButton(onPressed: (){}, child: Text('See All',style: TextStyling.blue400size12,))
          ],
        ),
        SizedBox(
          height: 60.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
              itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                    color: ColorsManager.moreLightGrey,
                    shape: BoxShape.circle
                ),
                child: Image.asset(imagesPaths[index]),
              ),
            );

          }),
        ),
      ],
    );
  }
}
