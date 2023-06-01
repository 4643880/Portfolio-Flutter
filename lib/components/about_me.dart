import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/common_button.dart';
import 'package:portfolio_app/components/language_img_text.dart';
import 'package:portfolio_app/components/skills.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: GetPlatform.isMobile ? 2150.h : 1920.w / 0.700,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xff001A1515),
            Color(0xff29010101),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: GetPlatform.isMobile ? 74.h : 1920.w / 14,
          ),
          const CommonButton(text: "ABOUT ME"),
          SizedBox(
            height: GetPlatform.isMobile ? 38 : 1920.w / 27.4,
          ),
          Container(
            width: GetPlatform.isMobile ? 265.w : 763.w,
            child: Text(
              "Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est.",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: const Color(0xff050505),
              ),
              textAlign:
                  GetPlatform.isMobile ? TextAlign.justify : TextAlign.center,
            ),
          ),
          SizedBox(
            height: GetPlatform.isMobile ? 30.h : 1920.w / 28.4,
          ),
          Text(
            "|        EXPLORE        |",
            style: GoogleFonts.montserrat(
              fontWeight:
                  GetPlatform.isMobile ? FontWeight.w700 : FontWeight.w600,
              fontSize: GetPlatform.isMobile ? 13.sp : 15.sp,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: GetPlatform.isMobile ? 66.h : 1920.w / 22.4,
          ),
          Image.asset(
            "assets/images/divider.png",
            fit: BoxFit.fitHeight,
            height: 12.h,
            // width: 785.w,
          ),
          SizedBox(
            height: GetPlatform.isMobile ? 61.h : 1920.w / 17.7,
          ),
          Container(
            width: 1066.w,
            height: GetPlatform.isMobile ? 490.h : 1920.w / 5.14,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GetPlatform.isMobile
                    ? const SkillsWidget(
                        text: "DESIGN",
                        desc:
                            "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                        img: "assets/images/design.png",
                      )
                    : Container(),
                GetPlatform.isMobile
                    ? const SkillsWidget(
                        text: "DEVELOPMENT",
                        desc:
                            "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                        img: "assets/images/development.png",
                      )
                    : Container(),
                GetPlatform.isMobile
                    ? const SkillsWidget(
                        text: "MAINTENANCE",
                        desc:
                            "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                        img: "assets/images/maintenance.png",
                      )
                    : Container(),
                GetPlatform.isMobile
                    ? Container()
                    : const Row(
                        children: [
                          SkillsWidget(
                            text: "DESIGN",
                            desc:
                                "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                            img: "assets/images/design.png",
                          ),
                          SkillsWidget(
                            text: "DEVELOPMENT",
                            desc:
                                "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                            img: "assets/images/development.png",
                          ),
                        ],
                      ),
                // It will contain only one skill
                GetPlatform.isMobile
                    ? Container()
                    : const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SkillsWidget(
                            text: "MAINTENANCE",
                            desc:
                                "I can design the site based on your needs and suggestions. I can also design the site from scratch and consult you during the job.",
                            img: "assets/images/maintenance.png",
                          ),
                        ],
                      ),
              ],
            ),
          ),
          SizedBox(
            height: GetPlatform.isMobile ? 62.h : 1920.w / 24,
          ),
          Image.asset(
            "assets/images/divider.png",
            fit: BoxFit.fitHeight,
            height: 12.h,
            // width: 785.w,
          ),
          SizedBox(
            height: GetPlatform.isMobile ? 100.h : 1920.w / 16,
          ),
          const CommonButton(text: "SKILLS"),
          Center(
            child: Container(
              width: 1004.w,
              // height: 1920.w / 1.92,
              // color: Colors.orange,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1920.w / 24.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70).w,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "USING NOW: ",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.sp,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  GetPlatform.isMobile
                      ? SizedBox(
                          height: 47.h,
                        )
                      : Container(),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: GetPlatform.isMobile
                        ? 3
                        : Get.find<HomeController>().usingNowList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: GetPlatform.isMobile ? 1 : 4,
                      childAspectRatio: (1.sw / 3) / (1.sw / 4.8),
                    ),
                    itemBuilder: (context, index) {
                      final eachLanguageItem =
                          Get.find<HomeController>().usingNowList[index];
                      return LanguageWidget(
                        text: eachLanguageItem.text,
                        img: eachLanguageItem.img,
                      );
                    },
                  ),
                  SizedBox(
                    height: 1920.w / 24.3,
                  ),
                  GetPlatform.isMobile
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.only(left: 70).w,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "LEARNING: ",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 30.sp,
                                color: const Color(0xff000000),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                  GetPlatform.isMobile
                      ? Container()
                      : GridView.builder(
                          shrinkWrap: true,
                          itemCount:
                              Get.find<HomeController>().learningList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index) {
                            final eachLanguageItem =
                                Get.find<HomeController>().learningList[index];
                            return LanguageWidget(
                              text: eachLanguageItem.text,
                              img: eachLanguageItem.img,
                            );
                          },
                        ),
                  GetPlatform.isMobile
                      ? Container()
                      : SizedBox(
                          height: 1920.w / 24.3,
                        ),
                  GetPlatform.isMobile
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.only(left: 70).w,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "OTHER SKILLS: ",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 30.sp,
                                color: const Color(0xff000000),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                  GetPlatform.isMobile
                      ? Container()
                      : GridView.builder(
                          shrinkWrap: true,
                          itemCount:
                              Get.find<HomeController>().otherList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index) {
                            final eachLanguageItem =
                                Get.find<HomeController>().otherList[index];
                            return LanguageWidget(
                              text: eachLanguageItem.text,
                              img: eachLanguageItem.img,
                            );
                          },
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
