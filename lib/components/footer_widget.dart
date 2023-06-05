import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/footer_icon_widget.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Get.find<HomeController>().getFooter(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: GetPlatform.isMobile ? 289.h : 1920.w / 5.88,
            width: double.infinity,
            color: const Color(0xff1A1A1A),
            child: Column(
              children: [
                SizedBox(
                  height: GetPlatform.isMobile ? 52.h : 1920.w / 27.8,
                ),
                SizedBox(
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
                SizedBox(
                  width: 210.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FooterIconWidget(
                        img: snapshot.data?.docs.first.data()['fb'],
                      ),
                      FooterIconWidget(
                        img: snapshot.data?.docs.first.data()['in'],
                      ),
                      FooterIconWidget(
                        img: snapshot.data?.docs.first.data()['insta'],
                      ),
                      FooterIconWidget(
                        img: snapshot.data?.docs.first.data()['mail'],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1920.w / 43.6,
                ),
                SizedBox(
                  width: 763.w,
                  child: Text(
                    snapshot.data?.docs.first.data()['all-rights'],
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
        } else {
          return Container();
        }
      },
    );
  }
}
