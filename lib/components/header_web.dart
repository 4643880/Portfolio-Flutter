import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/icon_widget_for_web_header.dart';
import 'package:portfolio_app/components/menu_button.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class HeaderWidgetWeb extends StatelessWidget {
  const HeaderWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              //=========================================================
              // Menu
              //=========================================================
              FutureBuilder(
                  future: Get.find<HomeController>().getTopBar(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // print(snapshot.data?.docs.first.data()['logo']);
                      return Container(
                        height: 80.h,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 272.w,
                            ),
                            Image.network(
                              snapshot.data?.docs[0].data()["logo"],
                              // "assets/images/logo 1.png",
                              // fit: BoxFit.cover,
                              height: 50.w,
                              // width: 400.w,
                            ),
                            SizedBox(
                              width: 660.w,
                            ),
                            // const Spacer(),
                            SizedBox(
                              height: 1920.w / 48,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: snapshot.data?.docs[0]
                                          .data()["menuItems"]
                                          .length,
                                      // itemCount: Get.find<HomeController>().tabs.length,
                                      itemBuilder: (context, index) {
                                        final eachItem = snapshot.data?.docs[0]
                                            .data()["menuItems"][index];
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
                      );
                    } else {
                      return Container();
                    }
                  }),
              SizedBox(
                height: 1920.w / 56.47,
              ),
              FutureBuilder(
                future: Get.find<HomeController>().getHeader(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 272.w,
                          ),
                          // ===============================================
                          // Left Side
                          // ===============================================
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  snapshot.data?.docs.first.data()["greetings"],
                                  // "Hi, I am",
                                  style: GoogleFonts.raleway(
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 1920.w / 35.5,
                                ),
                                Text(
                                  snapshot.data?.docs.first.data()["name"],
                                  // "Tomasz Gajda",
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
                                  snapshot.data?.docs.first
                                      .data()["designation"],
                                  // "Front-end Developer / UI Designer",
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
                                    IconWidgetForWebHeader(
                                      img: snapshot.data?.docs.first
                                          .data()["git_Img"],
                                    ),
                                    SizedBox(
                                      width: 57.w,
                                    ),
                                    IconWidgetForWebHeader(
                                      img: snapshot.data?.docs.first
                                          .data()["email_Img"],
                                    ),
                                    SizedBox(
                                      width: 57.w,
                                    ),
                                    IconWidgetForWebHeader(
                                      img: snapshot.data?.docs.first
                                          .data()["linkedin_Img"],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // =============================================
                          // Right Side Man Image
                          // =============================================
                          SizedBox(
                            width: 57.w,
                          ),
                          Image.network(
                            snapshot.data?.docs.first.data()["man_Img"],
                            // "assets/images/image7.png",
                            fit: BoxFit.contain,
                            height: 877.h,
                            width: 783.w,
                          ),
                          SizedBox(
                            width: 265.w,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
