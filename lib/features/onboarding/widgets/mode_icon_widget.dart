import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ModeIconWidget extends StatelessWidget {
  const ModeIconWidget({
    super.key,
    required this.assetName,
    required this.title,
    this.selected = false,
  });

  final String assetName;
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: 7.5.h,
              height: 7.5.h,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff30393C).withOpacity(selected ? 1 : 0),
              ),
              child: SvgPicture.asset("assets/svgs/$assetName.svg"),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          title,
          style: TextStyle(
            color: const Color(0xffDADADA),
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
