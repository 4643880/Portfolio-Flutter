import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: GetPlatform.isMobile ? 289.h : 1920.w / 5.88,
      width: double.infinity,
      color: const Color(0xff1A1A1A),
      child: Column(
        children: [
          SizedBox(
            height: GetPlatform.isMobile ? 52.h : 1920.w / 27.8,
          ),
          Container(
            height: 1920.w / 40,
            width: 188.w,
            child: Image.asset(
              "assets/images/top.png",
              fit: BoxFit.fill,
              // height: 26.h,
              // width: 188.w,
            ),
          ),
          SizedBox(
            height: 1920.w / 43.6,
          ),
          Container(
            width: 210.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  // width: 30.w,
                  child: SvgPicture.asset(
                    "assets/images/fb.svg",
                    width: 30.w,
                    height: 1920.w / 64,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 30.w,
                  child: SvgPicture.asset(
                    "assets/images/in.svg",
                    width: 30.w,
                    height: 1920.w / 64,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 30.w,
                  child: SvgPicture.asset(
                    "assets/images/insta.svg",
                    width: 30.w,
                    height: 1920.w / 64,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 30.w,
                  child: SvgPicture.asset(
                    "assets/images/mail.svg",
                    width: 30.w,
                    height: 1920.w / 64,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1920.w / 43.6,
          ),
          Container(
            width: 763.w,
            child: Text(
              "@2020 Tomasz Gajda All Rights Reserved.",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
