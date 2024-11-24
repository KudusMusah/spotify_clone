import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.height,
  });

  final String title;
  final VoidCallback onPressed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size.fromHeight(height ?? 9.3.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.whiteTextColor,
          fontSize: 17.5.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
