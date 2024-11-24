import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffix,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String hintText;
  final Widget? suffix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      style: TextStyle(
        fontSize: 17.sp,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 17.sp,
          color: AppColors.darkIconColor,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: suffix,
      ),
    );
  }
}
