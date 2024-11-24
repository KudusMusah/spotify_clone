import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/app_button.dart';
import 'package:spotify_clone/core/common/widgets/custom_app_bar.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/auth/screens/sign_in.dart';
import 'package:spotify_clone/features/auth/widgets/auth_input.dart';
import 'package:spotify_clone/features/auth/widgets/custom_divider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        ),
      );

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onTap: () => Navigator.of(context).pop(),
        title: SvgPicture.asset(
          "assets/svgs/spotify_logo.svg",
          height: 3.8.h,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                SizedBox(height: 3.5.h),
                Text(
                  "Register",
                  style: TextStyle(
                    color: AppColors.lightBackgroundColor,
                    fontSize: 21.3.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 1.7.h),
                RichText(
                  text: const TextSpan(
                    text: "If You Need Any Support ",
                    style: TextStyle(
                      color: AppColors.lightBackgroundColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Click here",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.h),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AuthInput(
                        controller: _nameController,
                        hintText: "Full Name",
                      ),
                      SizedBox(height: 2.h),
                      AuthInput(
                        controller: _emailController,
                        hintText: "Enter Email",
                      ),
                      SizedBox(height: 2.h),
                      AuthInput(
                        obscureText: _obscureText,
                        controller: _passwordController,
                        hintText: "Password",
                        suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.remove_red_eye,
                              color: AppColors.darkIconColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                BasicAppButton(title: "Create Account", onPressed: () {}),
                SizedBox(height: 3.5.h),
                const CustomDivider(),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/google_icon.svg",
                      height: 4.h,
                    ),
                    SizedBox(width: 15.w),
                    SvgPicture.asset(
                      "assets/svgs/facebook_icon.svg",
                      height: 4.h,
                    ),
                  ],
                ),
                SizedBox(height: 5.0.h),
                RichText(
                  text: TextSpan(
                    text: "Do You Have an Account? ",
                    style: TextStyle(
                      color: AppColors.lightBackgroundColor,
                      fontSize: 15.2.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                          color: AppColors.signInRegisterColor,
                          fontSize: 15.2.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
