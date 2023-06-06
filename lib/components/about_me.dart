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
    return FutureBuilder(
      future: Get.find<HomeController>().getAboutMe(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
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
                SizedBox(
                  width: GetPlatform.isMobile ? 265.w : 763.w,
                  child: Text(
                    snapshot.data?.docs.first.data()["intro"],
                    // "Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est.",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: const Color(0xff050505),
                    ),
                    textAlign: GetPlatform.isMobile
                        ? TextAlign.justify
                        : TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: GetPlatform.isMobile ? 30.h : 1920.w / 28.4,
                ),
                Text(
                  "|        EXPLORE        |",
                  style: GoogleFonts.montserrat(
                    fontWeight: GetPlatform.isMobile
                        ? FontWeight.w700
                        : FontWeight.w600,
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
                SizedBox(
                  width: 1066.w,
                  height: GetPlatform.isMobile ? 490.h : 1920.w / 5.14,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GetPlatform.isMobile
                          ? SkillsWidget(
                              text: snapshot.data?.docs.first.data()["skills"]
                                  [0]["skill_name"],
                              desc: snapshot.data?.docs.first.data()["skills"]
                                  [0]["desc"],
                              img: snapshot.data?.docs.first.data()["skills"][0]
                                  ["img"],
                            )
                          : Container(),
                      GetPlatform.isMobile
                          ? SkillsWidget(
                              text: snapshot.data?.docs.first.data()["skills"]
                                  [1]["skill_name"],
                              desc: snapshot.data?.docs.first.data()["skills"]
                                  [1]["desc"],
                              img: snapshot.data?.docs.first.data()["skills"][1]
                                  ["img"],
                            )
                          : Container(),
                      GetPlatform.isMobile
                          ? SkillsWidget(
                              text: snapshot.data?.docs.first.data()["skills"]
                                  [2]["skill_name"],
                              desc: snapshot.data?.docs.first.data()["skills"]
                                  [2]["desc"],
                              img: snapshot.data?.docs.first.data()["skills"][2]
                                  ["img"],
                            )
                          : Container(),
                      GetPlatform.isMobile
                          ? Container()
                          : Row(
                              children: [
                                SkillsWidget(
                                  text: snapshot.data?.docs.first
                                      .data()["skills"][0]["skill_name"],
                                  desc: snapshot.data?.docs.first
                                      .data()["skills"][0]["desc"],
                                  img: snapshot.data?.docs.first
                                      .data()["skills"][0]["img"],
                                ),
                                SkillsWidget(
                                  text: snapshot.data?.docs.first
                                      .data()["skills"][1]["skill_name"],
                                  desc: snapshot.data?.docs.first
                                      .data()["skills"][1]["desc"],
                                  img: snapshot.data?.docs.first
                                      .data()["skills"][1]["img"],
                                ),
                              ],
                            ),
                      // It will contain only one skill
                      GetPlatform.isMobile
                          ? Container()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SkillsWidget(
                                  text: snapshot.data?.docs.first
                                      .data()["skills"][2]["skill_name"],
                                  desc: snapshot.data?.docs.first
                                      .data()["skills"][2]["desc"],
                                  img: snapshot.data?.docs.first
                                      .data()["skills"][2]["img"],
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
                  child: SizedBox(
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
                              : snapshot.data?.docs.first
                                  .data()["using-now"]
                                  .length,
                          // : Get.find<HomeController>().usingNowList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: GetPlatform.isMobile ? 1 : 4,
                            childAspectRatio: (1.sw / 3) / (1.sw / 4.8),
                          ),
                          itemBuilder: (context, index) {
                            final eachLanguageItem = snapshot.data?.docs.first
                                .data()["using-now"][index];
                            return LanguageWidget(
                              text: eachLanguageItem['text'],
                              img: eachLanguageItem['img'],
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
                                itemCount: snapshot.data?.docs.first
                                    .data()["learning"]
                                    .length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  final eachLanguageItem = snapshot
                                      .data?.docs.first
                                      .data()["learning"][index];
                                  return LanguageWidget(
                                    text: eachLanguageItem['text'].toString(),
                                    img: eachLanguageItem['img'],
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
                                itemCount: snapshot.data?.docs.first
                                    .data()["other-skills"]
                                    .length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                ),
                                itemBuilder: (context, index) {
                                  final eachLanguageItem = snapshot
                                      .data?.docs.first
                                      .data()["other-skills"][index];
                                  return LanguageWidget(
                                    text: eachLanguageItem['text'],
                                    img: eachLanguageItem['img'],
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
        } else {
          return Container();
        }
      },
    );
  }
}
