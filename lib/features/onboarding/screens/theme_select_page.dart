import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/app_button.dart';
import 'package:spotify_clone/features/auth/screens/auth_landing_page.dart';
import 'package:spotify_clone/features/onboarding/cubit/theme_cubit.dart';
import 'package:spotify_clone/features/onboarding/widgets/mode_icon_widget.dart';

class ThemeSelectPage extends StatelessWidget {
  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ThemeSelectPage(),
        ),
      );

  const ThemeSelectPage({super.key});

  void updateTheme(BuildContext context, ThemeMode mode) {
    debugPrint("Hello");
    context.read<ThemeCubit>().updateTheme(mode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(height: 4.h),
                BlocBuilder<ThemeCubit, ThemeMode>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => updateTheme(context, ThemeMode.dark),
                          child: ModeIconWidget(
                            assetName: "moon",
                            title: "Dark Mode",
                            selected: state == ThemeMode.dark,
                          ),
                        ),
                        SizedBox(width: 15.w),
                        GestureDetector(
                          onTap: () => updateTheme(context, ThemeMode.light),
                          child: ModeIconWidget(
                            assetName: "sun",
                            title: "Light Mode",
                            selected: state == ThemeMode.light,
                          ),
                        ),
                      ],
                    );
                  },
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
