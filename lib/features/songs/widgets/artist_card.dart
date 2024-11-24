import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/onboarding/cubit/theme_cubit.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeMode currTheme = context.watch<ThemeCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.zero,
          elevation: 1,
          child: SizedBox(
            height: 21.h,
            width: 33.w,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/images/artist1.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
                Align(
                  alignment: const Alignment(0.9, 1.2),
                  child: CircleAvatar(
                    radius: 1.7.h,
                    backgroundColor: currTheme == ThemeMode.dark
                        ? const Color(0xff2C2C2C)
                        : const Color(0xffE6E6E6),
                    child: currTheme == ThemeMode.dark
                        ? SvgPicture.asset("assets/svgs/Play.svg")
                        : SvgPicture.asset("assets/svgs/play_dark.svg"),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 1.5.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 10),
          child: Text(
            "Bad Guy",
            style: TextStyle(
              color: currTheme == ThemeMode.dark
                  ? const Color(0xffE1E1E1)
                  : AppColors.blackColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Billie Eilish",
            style: TextStyle(
              color: currTheme == ThemeMode.dark
                  ? const Color(0xffE1E1E1)
                  : AppColors.blackColor,
              fontSize: 15.sp,
            ),
          ),
        ),
      ],
    );
  }
}
