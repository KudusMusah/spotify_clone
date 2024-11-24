import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/app_button.dart';
import 'package:spotify_clone/core/common/widgets/custom_app_bar.dart';
import 'package:spotify_clone/features/auth/screens/register.dart';
import 'package:spotify_clone/features/auth/screens/sign_in.dart';

class AuthLandingPage extends StatelessWidget {
  const AuthLandingPage({super.key});

  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const AuthLandingPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              "assets/svgs/top_pattern.svg",
              height: 17.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              "assets/svgs/bottom_pattern.svg",
              height: 32.5.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 46.5.h,
              child: Image.asset(
                "assets/images/auth_bg.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(
                  onTap: () => Navigator.of(context).pop(),
                ),
                SizedBox(height: 14.h),
                SvgPicture.asset(
                  "assets/svgs/spotify_logo.svg",
                  height: 7.7.h,
                ),
                SizedBox(height: 5.h),
                Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(
                    color: const Color.fromRGBO(160, 160, 160, 1),
                    fontSize: 20.5.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  width: 75.w,
                  child: Text(
                    "Spotify is a proprietary Swedish audio streaming and media services provider ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.7.sp,
                      color: const Color(0xffA0A0A0),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 8.w),
                    Expanded(
                      child: BasicAppButton(
                        title: "Register",
                        height: 8.h,
                        onPressed: () => RegisterScreen.route(context),
                      ),
                    ),
                    SizedBox(width: 7.w),
                    Expanded(
                      child: TextButton(
                        onPressed: () => SignInScreen.route(context),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: const Color(0xffA0A0A0),
                            fontSize: 17.5.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
