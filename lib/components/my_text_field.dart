import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final int? maxLines;
  const MyTextField({
    super.key,
    required this.label,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1920.w / 3.14,
      height: 1.sw > 500
          ? (1920.w / 40) * (maxLines ?? 1.5)
          : (1920.w / 40) * (maxLines ?? 3),
      decoration: BoxDecoration(
        // color: Colors.red,
        border: Border(
          left: BorderSide(width: 5.0.w, color: Colors.black),
          bottom: BorderSide(width: 5.0.w, color: Colors.black),
        ),
      ),
      // color: Colors.red,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 08.w,
        ),
        child: TextField(
          decoration: InputDecoration(
            label: Align(
              alignment: Alignment.topLeft,
              child: Text(
                label,
              ),
            ),
            labelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            border: InputBorder.none,
          ),
          maxLines: maxLines,
        ),
      ),
    );
  }
}
