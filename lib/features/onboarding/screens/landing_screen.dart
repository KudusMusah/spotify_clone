import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/app_button.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/onboarding/screens/theme_select_page.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/intro_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 6.5.h),
                SvgPicture.asset(
                  "assets/svgs/spotify_logo.svg",
                  height: 6.4.h,
                ),
                Container(color: Colors.black.withOpacity(0.15)),
                const Spacer(),
                Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(
                    color: const Color(0xffDADADA),
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  width: 75.w,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.5.sp,
                      color: AppColors.lightIconColor,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: BasicAppButton(
                    title: "Get Started",
                    onPressed: () => ThemeSelectPage.route(context),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
