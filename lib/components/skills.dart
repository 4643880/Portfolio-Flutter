import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsWidget extends StatelessWidget {
  final String text;
  final String desc;
  final String img;

  const SkillsWidget({
    super.key,
    required this.text,
    required this.desc,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: GetPlatform.isMobile ? 151.h : 1920.w / 10.84,
      width: GetPlatform.isMobile ? 249.w : 516.w,
      // color: Colors.orange,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.07,
            child: CachedNetworkImage(
              imageUrl: img,
              fit: BoxFit.fitHeight,
              height: 64.h,
              width: 61.w,
              colorBlendMode: BlendMode.luminosity,
            ),
          ),
          Positioned(
            left: 40.w,
            top: 1920.w / 128,
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            left: 40.w,
            top: 1920.w / 29.53,
            child: Container(
              // height: 104.h,
              width: 431.w,
              child: Text(
                desc,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
