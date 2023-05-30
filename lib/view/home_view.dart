import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 1920.w / 1.91,
              // color: Colors.red,
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xffE5E5E5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // left size
                        const Spacer(),
                        // right side
                        SizedBox(
                          width: 1117.w,
                          child: SvgPicture.asset(
                            "assets/images/curvedBg.svg",
                            // width: 1.sw - 0.4.sw,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 1920.w / 26.6,
                      ),
                      // Menu
                      Container(
                        height: 80.h,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 272.w,
                            ),
                            Image.asset(
                              "assets/images/logo 1.png",
                              // fit: BoxFit.cover,
                              height: 50.w,
                              // width: 400.w,
                            ),
                            SizedBox(
                              width: 660.w,
                            ),
                            // const Spacer(),
                            Container(
                              // width: 1.sw - 0.6.sw,
                              height: 1920.w / 48,
                              // color: Colors.red,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: Get.find<HomeController>()
                                          .tabs
                                          .length,
                                      itemBuilder: (context, index) {
                                        final eachItem =
                                            Get.find<HomeController>()
                                                .tabs[index];
                                        return MenuButton(
                                          text: eachItem,
                                          index: index,
                                          function: () {
                                            Get.find<HomeController>()
                                                .currentIndex
                                                .value = index;
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 255.w,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1920.w / 56.47,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 272.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hi, I am",
                                    style: GoogleFonts.raleway(
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1920.w / 35.5,
                                  ),
                                  Text(
                                    "Tomasz Gajda",
                                    style: GoogleFonts.raleway(
                                      fontSize: 80.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1920.w / 60,
                                  ),
                                  Text(
                                    "Front-end Developer / UI Designer",
                                    style: GoogleFonts.raleway(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w800,
                                      color: const Color(0xff909090),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1920.w / 15.23,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 1920.w / 35.5,
                                        width: 61.w,
                                        padding: const EdgeInsets.all(10).r,
                                        color: const Color(0xffC4C4C4),
                                        child: Image.asset(
                                          "assets/images/Vector.png",
                                          // fit: BoxFit.cover,
                                          height: 38.w,
                                          // width: 400.w,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 57.w,
                                      ),
                                      Container(
                                        height: 1920.w / 35.5,
                                        width: 61.w,
                                        padding: const EdgeInsets.all(10).r,
                                        color: const Color(0xffC4C4C4),
                                        child: Image.asset(
                                          "assets/images/Vector-1.png",
                                          // fit: BoxFit.cover,
                                          width: 50.w,
                                          // width: 400.w,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 57.w,
                                      ),
                                      Container(
                                        height: 1920.w / 35.5,
                                        width: 61.w,
                                        padding: const EdgeInsets.all(10).r,
                                        color: const Color(0xffC4C4C4),
                                        child: Image.asset(
                                          "assets/images/Vector-2.png",
                                          // fit: BoxFit.cover,
                                          height: 50.w,
                                          // width: 400.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 57.w,
                            ),
                            Image.asset(
                              "assets/images/image7.png",
                              fit: BoxFit.contain,
                              height: 877.h,
                              width: 783.w,
                            ),
                            SizedBox(
                              width: 265.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
