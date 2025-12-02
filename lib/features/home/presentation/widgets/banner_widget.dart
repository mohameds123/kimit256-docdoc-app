import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
   BannerWidget({super.key});
  List<Widget> bannerItems = [
    Image.asset("assets/images/banner.png"),
    Image.asset("assets/images/banner.png"),
    Image.asset("assets/images/banner.png"),
    Image.asset("assets/images/banner.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: bannerItems,
        options: CarouselOptions(
          height: 200.h,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,

          scrollDirection: Axis.horizontal,
        )
    );
  }
}
