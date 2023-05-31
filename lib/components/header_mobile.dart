import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/drop_down_mobile.dart';

class HeaderWidgetMobile extends StatelessWidget {
  const HeaderWidgetMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  Image.asset(
                    "assets/images/logoWhite.png",
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
        Container(
          height: 696.h,
          width: 1.sw,
          color: const Color(0xff000000),
          child: Stack(
            children: [
              Positioned(
                top: 75.h,
                left: -22.w,
                child: Image.asset(
                  "assets/images/image7.png",
                  fit: BoxFit.fill,
                  height: 696.h,
                  // width: 623.w,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                // top: 75.h,
                // left: -22.w,
                child: Image.asset(
                  "assets/images/bottomCurveMobile.png",
                  fit: BoxFit.fitHeight,
                  height: 313.h,
                  // width: 785.w,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Hi, I am",
                                style: GoogleFonts.raleway(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Tomasz Gajda",
                                style: GoogleFonts.raleway(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              Text(
                                "Front-end Developer / UI Designer",
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Image.asset(
                            "assets/images/Vectorw.png",
                            // fit: BoxFit.cover,
                            height: 25.w,
                            // width: 400.w,
                          ),
                          SizedBox(
                            width: 29.h,
                          ),
                          Image.asset(
                            "assets/images/Vector-1w.png",
                            // fit: BoxFit.cover,
                            width: 25.w,
                            // width: 400.w,
                          ),
                          SizedBox(
                            width: 29.h,
                          ),
                          Image.asset(
                            "assets/images/Vector-2w.png",
                            // fit: BoxFit.cover,
                            height: 25.w,
                            // width: 400.w,
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
  }
}
