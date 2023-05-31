import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final int index;
  final Function() function;
  const MenuButton({
    super.key,
    required this.text,
    required this.function,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: function,
        child: Container(
          // height: 1920.w / 41.7,
          padding: EdgeInsets.symmetric(
            horizontal: 30.r,
          ),
          decoration: BoxDecoration(
            color: index == Get.find<HomeController>().currentIndex.value
                ? Colors.white
                : const Color(0xff000000),
            borderRadius: BorderRadius.all(
              const Radius.circular(30).r,
            ),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 10.r),
          child: Text(
            text,
            style: TextStyle(
              color: index == Get.find<HomeController>().currentIndex.value
                  ? const Color(0xff000000)
                  : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            ),
          ),
        ),
      ),
    );
  }
}
