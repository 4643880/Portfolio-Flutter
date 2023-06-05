import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/components/about_me.dart';
import 'package:portfolio_app/components/contact_widget.dart';
import 'package:portfolio_app/components/description.dart';
import 'package:portfolio_app/components/footer_widget.dart';
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
              const DescriptionWidget(),
              // ============================================
              // About Me
              // ============================================
              const AboutMeWidget(),
              // ============================================
              // Portfolio
              // ============================================
              const PortfolioWidget(),
              // ============================================
              // Contact
              // ============================================
              const ContactWidget(),
              // ============================================
              // Footer
              // ============================================
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
