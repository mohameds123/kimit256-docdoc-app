import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/features/home/logic/cubit.dart';
import 'package:kimit256docdoc/features/home/logic/state.dart';

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
        BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            if (state is HomeLoadingState){
              return Center(child:  CircularProgressIndicator(),);
            }else if (state is HomeSuccessState){
              return SizedBox(
                height: 300.h,
                child: ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return DoctorWidget(doctors: state.homeModel.data![index].doctors![index],);
                  },
                ),
              );
            }else if (state is HomeErrorState){
              Center(child: Text(state.errorMessage));
            } return SizedBox();

          },
        ),
      ],
    );
  }
}
