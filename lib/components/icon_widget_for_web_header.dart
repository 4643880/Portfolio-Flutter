import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconWidgetForWebHeader extends StatelessWidget {
  final String img;
  const IconWidgetForWebHeader({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1920.w / 35.5,
      width: 61.w,
      padding: const EdgeInsets.all(10).r,
      color: const Color(0xffC4C4C4),
      child: Image.network(
        img,
        // "assets/images/Vector.png",
        // fit: BoxFit.cover,
        height: 38.w,
        // width: 400.w,
      ),
    );
  }
}
