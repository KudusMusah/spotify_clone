import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/app_button.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/auth/screens/auth_landing_page.dart';
import 'package:spotify_clone/features/onboarding/widgets/mode_icon_widget.dart';

class ThemeSelectPage extends StatelessWidget {
  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ThemeSelectPage(),
        ),
      );

  const ThemeSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/choose_mode_bg.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(color: Colors.black.withOpacity(0.15)),
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
                const Spacer(),
                Text(
                  "Choose Mode",
                  style: TextStyle(
                    color: const Color(0xffDADADA),
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Light Mode yet to be implemented",
                  style: TextStyle(
                    color: const Color(0xffDADADA),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const ModeIconWidget(
                        assetName: "moon",
                        title: "Dark Mode",
                        selected: true,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {},
                      child: const ModeIconWidget(
                        assetName: "sun",
                        title: "Light Mode",
                        selected: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: BasicAppButton(
                    title: "Continue",
                    onPressed: () => AuthLandingPage.route(context),
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
