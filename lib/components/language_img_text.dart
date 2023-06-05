import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageWidget extends StatelessWidget {
  final String text;
  final String img;
  const LanguageWidget({
    super.key,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: GetPlatform.isMobile ? 176.h : 200.h,
      // width: GetPlatform.isMobile ? 122.w : 150.w,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            img,
            fit: BoxFit.fill,
            height: 1920.w / 19.2,
            width: 85.w,
          ),
          SizedBox(
            height: 1920.w / 112.9,
          ),
          Text(
            text.toUpperCase(),
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w400,
              fontSize: 24.sp,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
