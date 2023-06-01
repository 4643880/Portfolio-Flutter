import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components/common_button.dart';
import 'package:portfolio_app/components/my_text_field.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sw > 500 ? 1920.w / 1.62 : 1920.w / 1.33,
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
            height: 1920.w / 13.52,
          ),
          const CommonButton(text: "CONTACT"),
          SizedBox(
            height: 1920.w / 32,
          ),
          Container(
            width: 763.w,
            child: Text(
              "Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est.",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: const Color(0xff050505),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 1920.w / 83,
          ),
          Image.asset(
            "assets/images/divider.png",
            fit: BoxFit.fitHeight,
            height: 12.h,
            // width: 785.w,
          ),
          SizedBox(
            height: 1920.w / 15,
          ),
          const MyTextField(
            label: "ENTER YOUR NAME *",
          ),
          SizedBox(
            height: 1920.w / 38,
          ),
          const MyTextField(
            label: "ENTER YOUR EMAIL *",
          ),
          SizedBox(
            height: 1920.w / 38,
          ),
          const MyTextField(
            label: "YOUR NUMBER *",
          ),
          SizedBox(
            height: 1920.w / 38,
          ),
          const MyTextField(
            label: "YOUR MESSAGE*",
            maxLines: 4,
          ),
          SizedBox(
            height: 1920.w / 38,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "|        SUBMIT        |",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
