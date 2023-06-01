import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Container(
      height: 1920.w / 10.84,
      width: 516.w,
      child: Stack(
        children: [
          Image.asset(
            img,
            fit: BoxFit.fitHeight,
            height: 64.h,
            width: 61.w,
            opacity: const AlwaysStoppedAnimation(0.07),
            colorBlendMode: BlendMode.luminosity,
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
