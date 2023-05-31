import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: GetPlatform.isMobile ? 547.h : 1920.w / 6.13,
      color: const Color(0xff1D1D1D),
      width: double.infinity,
      child: Stack(
        children: [
          // IT Image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetPlatform.isMobile
                  ? Container()
                  : SizedBox(
                      width: 1350.w,
                    ),
              GetPlatform.isMobile
                  ? Image.asset(
                      "assets/images/ITB.png",
                      // fit: BoxFit.cover,
                      height: 420.h,
                      width: 301.w,
                      // width: 400.w,
                    )
                  : Image.asset(
                      "assets/images/Logo ITB.png",
                      // fit: BoxFit.cover,
                      height: 368.h,
                      // width: 400.w,
                    ),
            ],
          ),
          // Description

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: GetPlatform.isMobile ? 0 : 102.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: GetPlatform.isMobile
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    "IT BERRIES",
                    style: GoogleFonts.montserrat(
                      fontSize: GetPlatform.isMobile ? 25.sp : 30.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: GetPlatform.isMobile ? 18.h : 1920.w / 30.96,
                  ),
                  Container(
                    width: GetPlatform.isMobile ? 284.w : 1148.w,
                    child: Text(
                      "Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est. Morbi commodo, eros in dignissim tempus, lacus odio rutrum augue, in semper sem magna quis tellus. Etiam enim erat, suscipit eu semper a, dictum sit amet elit. Nunc egestas nisi eget enim gravida facilisis. Pellentesque laoreet varius turpis vel pharetra. Ut ante justo, consequat vitae elementum tempor, accumsan nec eros. ",
                      style: GoogleFonts.openSans(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffFFFFFF),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: GetPlatform.isMobile ? 49.h : 1920.w / 73.84,
                  ),
                  Text(
                    "|     READ MORE     |",
                    style: GoogleFonts.montserrat(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: GetPlatform.isMobile ? 0 : 670.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
