import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.onTap,
    this.trailing,
    this.leading,
  });

  final Widget? title;
  final VoidCallback? onTap;
  final IconData? trailing;
  final IconData? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: onTap ?? () => Navigator.of(context).pop(),
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.03),
              shape: BoxShape.circle,
            ),
            child: Icon(
              leading ?? Icons.arrow_back_ios_new,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
        title: title ?? const Text(""),
        actions: [
          trailing != null
              ? IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    trailing,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
