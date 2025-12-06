import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/styling/text_style.dart';
import 'package:kimit256docdoc/features/home/logic/cubit.dart';
import 'package:kimit256docdoc/features/home/logic/state.dart';

class DoctorSpecialityWidget extends StatelessWidget {
  DoctorSpecialityWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(

      builder: (context, state) {
        if (state is HomeLoadingState){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else if (state is HomeSuccessState){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Doctor Speciality", style: TextStyling.black700size18,),
                  Spacer(),
                  TextButton(onPressed: () {},
                      child: Text('See All', style: TextStyling.blue400size12,))
                ],
              ),
              SizedBox(
                height: 80.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.homeModel.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          spacing: 4.h,
                          children: [
                            Container(
                              width: 56.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                  color: ColorsManager.moreLightGrey,
                                  shape: BoxShape.circle
                              ),
                              child: Image.asset("assets/images/doctor.png"),
                            ),

                            Text(state.homeModel.data![index].name!),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          );
        }else if (state is HomeErrorState){
          return Center(child: Text(state.errorMessage));
        }return SizedBox();

      },
    );
  }
}
