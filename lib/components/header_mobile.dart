import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/drop_down_mobile.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class HeaderWidgetMobile extends StatelessWidget {
  const HeaderWidgetMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Get.find<HomeController>().getTopBar(),
      builder: (context, snapshot1) {
        if (snapshot1.hasData) {
          return FutureBuilder(
              future: Get.find<HomeController>().getHeader(),
              builder: (context, snapshot2) {
                if (snapshot2.hasData && snapshot1.hasData) {
                  return Column(
                    children: [
                      Container(
                        color: const Color(0xff000000),
                        height: 80.h,
                        width: 1.sw,
                        child: Column(
                          children: [
                            //=========================================
                            // Top Bar Menu & Logo
                            //=========================================
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 42.w,
                                ),
                                Image.network(
                                  snapshot1.data?.docs[0].data()["logo"],
                                  // fit: BoxFit.cover,
                                  height: 35.h,
                                  // width: 400.w,
                                ),
                                const Spacer(),
                                const DropDownMenuForMobileWidget(),
                                SizedBox(
                                  width: 42.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //=========================================
                      //
                      //=========================================
                      // const Text("abc"),
                      Container(
                        height: 696.h,
                        width: 1.sw,
                        color: const Color(0xff000000),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 75.h,
                              left: -22.w,
                              child: Image.network(
                                snapshot2.data?.docs[0].data()["man_Img"],
                                fit: BoxFit.fill,
                                height: 696.h,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Image.asset(
                                "assets/images/bottomCurveMobile.png",
                                fit: BoxFit.fitHeight,
                                height: 313.h,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: SizedBox(
                                height: 250.h,
                                width: 1.sw,
                                // color: Colors.red,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 27.w,
                                    ),
                                    // Title, Name, etc
                                    Expanded(
                                      child: SizedBox(
                                        height: 150.h,
                                        width: 1.sw,
                                        // color: Colors.orange,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                              snapshot2.data?.docs[0]
                                                  .data()["greetings"],
                                              style: GoogleFonts.raleway(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              snapshot2.data?.docs[0]
                                                  .data()["name"],
                                              style: GoogleFonts.raleway(
                                                fontSize: 35.sp,
                                                fontWeight: FontWeight.w700,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                            Text(
                                              snapshot2.data?.docs[0]
                                                  .data()["designation"],
                                              style: GoogleFonts.raleway(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w800,
                                                color: const Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Image.network(
                                          snapshot2.data?.docs[0]
                                              .data()["git_mob"],
                                          height: 25.w,
                                        ),
                                        SizedBox(
                                          width: 29.h,
                                        ),
                                        Image.network(
                                          snapshot2.data?.docs[0]
                                              .data()["email_mob"],
                                          width: 25.w,
                                        ),
                                        SizedBox(
                                          width: 29.h,
                                        ),
                                        Image.network(
                                          snapshot2.data?.docs[0]
                                              .data()["in_mob"],
                                          height: 25.w,
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              });
        } else {
          return Container();
        }
      },
    );
  }
}
