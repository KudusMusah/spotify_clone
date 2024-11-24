import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    required this.isDarkTheme,
    required this.onTap,
    this.trailing,
    this.leading,
  });

  final Widget? title;
  final bool isDarkTheme;
  final VoidCallback onTap;
  final IconData? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: leading ??
            IconButton(
              onPressed: onTap,
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: isDarkTheme
                        ? Colors.white.withOpacity(0.03)
                        : Colors.black.withOpacity(0.04),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: isDarkTheme ? Colors.white : Colors.black,
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
