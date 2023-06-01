import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/components/common_button.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: GetPlatform.isMobile ? 194.h : 1.sw / 5.98,
          width: 1.sw,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/mountains.png"),
              fit: BoxFit.cover,
            ),
            color: Color(0xff1A1A1A),
          ),
          child: const Center(
            child: CommonButton(
              text: "PORTFOLIO",
            ),
          ),
        ),
        Container(
          height: GetPlatform.isMobile ? 750 : 1.sw / 2.40,
          width: double.infinity,
          color: Colors.black,
          child: GridView.builder(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: GetPlatform.isMobile
                ? 3
                : Get.find<HomeController>().portfolioList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: GetPlatform.isMobile ? 1 : 3,
              childAspectRatio: (1.sw / 3) / (1.sw / 4.8),
              // childAspectRatio: childWidth / childHeight,
            ),
            itemBuilder: (context, index) {
              final eachImage = Get.find<HomeController>().portfolioList[index];
              return Image.asset(
                eachImage,
                fit: BoxFit.cover,
                height: 400.h,
                width: 640.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
