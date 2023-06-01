import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/about_me.dart';
import 'package:portfolio_app/components/contact_widget.dart';
import 'package:portfolio_app/components/description.dart';
import 'package:portfolio_app/components/header_mobile.dart';
import 'package:portfolio_app/components/header_web.dart';
import 'package:portfolio_app/components/portfolio.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ============================================
              // Header
              // ============================================
              kIsWeb == true
                  ? GetPlatform.isMobile
                      ? const HeaderWidgetMobile()
                      : const HeaderWidgetWeb()
                  : const HeaderWidgetMobile(),

              // ============================================
              // Description
              // ============================================
              kIsWeb == true
                  ? GetPlatform.isMobile
                      ? const DescriptionWidget()
                      : const DescriptionWidget()
                  : const DescriptionWidget(),
              // ============================================
              // About Me
              // ============================================
              GetPlatform.isWeb ? AboutMeWidget() : Container(),
              // ============================================
              // Portfolio
              // ============================================
              GetPlatform.isWeb ? PortfolioWidget() : Container(),
              // ============================================
              // Contact
              // ============================================
              GetPlatform.isWeb ? ContactWidget() : Container(),
              // ============================================
              // Footer
              // ============================================
              GetPlatform.isWeb ? FooterWidget() : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1920.w / 5.88,
      width: double.infinity,
      color: const Color(0xff1A1A1A),
      child: Column(
        children: [
          SizedBox(
            height: 1920.w / 27.8,
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
