import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer' as devtools show log;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterIconWidget extends StatelessWidget {
  final String img;
  const FooterIconWidget({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    // devtools.log(img);
    return SizedBox(
      child: Column(
        children: [
          SvgPicture.network(
            img,
            width: 30.w,
            height: 1920.w / 64,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
