import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 6.h,
              width: 6.5.h,
              decoration: BoxDecoration(
                color: const Color(0xff343434),
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage("assets/images/artist1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 5.w),
            SizedBox(
              width: 40.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dont smile at me",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: const Color(0xffE3E3E3),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    "Billie Eilish",
                    style: TextStyle(
                      color: const Color(0xffE3E3E3),
                      fontSize: 14.6.sp,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 10.w,
              child: Text(
                "5:32",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color(0xffE3E3E3),
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            const Icon(Icons.remove)
          ],
        )
      ],
    );
  }
}
