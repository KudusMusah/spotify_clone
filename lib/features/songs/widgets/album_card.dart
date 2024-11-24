import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.zero,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.w),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage("assets/images/artist1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: 37.w,
              height: 16.h,
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, bottom: 10),
            child: SizedBox(
              width: 33.w,
              child: Text(
                "Happier than ever",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color(0xffD1D1D1),
                  fontSize: 14.8.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
