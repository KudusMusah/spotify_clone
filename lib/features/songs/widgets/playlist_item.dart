import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/onboarding/cubit/theme_cubit.dart';

class PlaylistItem extends StatelessWidget {
  const PlaylistItem({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeMode currTheme = context.watch<ThemeCubit>().state;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 2.3.h,
              backgroundColor: currTheme == ThemeMode.dark
                  ? const Color(0xff2C2C2C)
                  : const Color(0xffE6E6E6),
              child: currTheme == ThemeMode.dark
                  ? SvgPicture.asset("assets/svgs/Play.svg")
                  : SvgPicture.asset("assets/svgs/play_dark.svg"),
            ),
            SizedBox(width: 5.w),
            Column(
              children: [
                Text(
                  "Bad Guy",
                  style: TextStyle(
                    color: currTheme == ThemeMode.dark
                        ? const Color(0xffE1E1E1)
                        : AppColors.blackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 0.5.h),
                Text(
                  "Billie Eilish",
                  style: TextStyle(
                    color: currTheme == ThemeMode.dark
                        ? const Color(0xffE1E1E1)
                        : AppColors.blackColor,
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
                color: currTheme == ThemeMode.dark
                    ? const Color(0xffE1E1E1)
                    : AppColors.blackColor,
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
