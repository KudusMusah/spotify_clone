import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/custom_app_bar.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/profile/widgets/favourite_item.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const UserProfile(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 38.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff343434),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.w),
                bottomRight: Radius.circular(15.w),
              ),
            ),
            child: Column(
              children: [
                CustomAppBar(
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: const Color(0xffE6E6E6),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Container(
                  height: 9.h,
                  width: 9.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/artist1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 1.3.h),
                Text(
                  "KudusBannah",
                  style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "kudusbanna@gmail.com",
                  style: TextStyle(
                    color: const Color(0xffD8D4D4),
                    fontSize: 15.sp,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "778",
                  style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Favourites",
                  style: TextStyle(
                    color: const Color(0xffD8D4D4),
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Favourited Songs",
                style: TextStyle(
                  color: const Color(0xffD6D6D6),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 7.w),
              shrinkWrap: true,
              children: [
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
                const FavouriteItem(),
                SizedBox(height: 2.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
