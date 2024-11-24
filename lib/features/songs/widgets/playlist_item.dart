import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlaylistItem extends StatelessWidget {
  const PlaylistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 2.3.h,
              backgroundColor: const Color(0xff2C2C2C),
              child: SvgPicture.asset("assets/svgs/Play.svg"),
            ),
            SizedBox(width: 5.w),
            Column(
              children: [
                Text(
                  "Bad Guy",
                  style: TextStyle(
                    color: const Color(0xffE1E1E1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 0.5.h),
                Text(
                  "Billie Eilish",
                  style: TextStyle(
                    color: const Color(0xffE1E1E1),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            Text(
              "5:32",
              style: TextStyle(
                color: const Color(0xffE1E1E1),
                fontSize: 15.sp,
              ),
            ),
            SizedBox(width: 10.w),
            SvgPicture.asset("assets/svgs/Heart.svg")
          ],
        )
      ],
    );
  }
}
