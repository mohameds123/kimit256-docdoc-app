import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styling/text_style.dart';
import '../../../../core/widgets/doctor_widget.dart';

class RecommendationDocWidget extends StatelessWidget {
  const RecommendationDocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Recommendation Doctor", style: TextStyling.black700size18),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('See All', style: TextStyling.blue400size12),
            ),
          ],
        ),
        SizedBox(
          height: 300.h,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return DoctorWidget();
            },
          ),
        ),
      ],
    );
  }
}
