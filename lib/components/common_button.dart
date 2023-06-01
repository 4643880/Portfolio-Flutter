import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButton extends StatelessWidget {
  final String text;
  const CommonButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: GetPlatform.isMobile
          ? EdgeInsets.symmetric(horizontal: 12.r, vertical: 10.r)
          : EdgeInsets.symmetric(horizontal: 40.r, vertical: 20.r),
      decoration: BoxDecoration(
        border: Border.all(
          width: 08.w,
          color: Colors.black,
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w700,
          fontSize: GetPlatform.isMobile ? 14.sp : 30.sp,
          letterSpacing: GetPlatform.isMobile ? 10.w : 25.w,
        ),
      ),
    );
  }
}
