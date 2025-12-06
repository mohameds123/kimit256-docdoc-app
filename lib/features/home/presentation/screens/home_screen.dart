import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/features/home/logic/cubit.dart';

import 'package:kimit256docdoc/features/home/presentation/widgets/header_widget.dart';

import '../widgets/banner_widget.dart';
import '../widgets/doctor_speciality_widget.dart';
import '../widgets/recommendation_doc_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),

                HeaderWidget(),
                SizedBox(height: 12.h),

                BannerWidget(),
                SizedBox(height: 12.h),

                DoctorSpecialityWidget(),
                SizedBox(height: 16.h),

                RecommendationDocWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
