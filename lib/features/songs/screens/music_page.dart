import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/custom_app_bar.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const MusicPage(),
        ),
      );

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double _value = 0.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Now Playing",
          style: TextStyle(
            color: const Color(0xffDDDDDD),
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Icons.more_vert,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.zero,
              elevation: 1,
              child: SizedBox(
                height: 40.h,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      6.w,
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/images/artist1.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bad Guy",
                      style: TextStyle(
                        color: const Color(0xffDFDFDF),
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      "Billie Eilish",
                      style: TextStyle(
                        color: const Color(0xffBABABA),
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/svgs/heart_outline.svg",
                  height: 2.7.h,
                ),
              ],
            ),
            SizedBox(height: 4.5.h),
            Slider(
              inactiveColor: const Color(0xff888888),
              activeColor: const Color(0xffB7B7B7),
              value: _value,
              onChanged: (double val) {
                setState(() {
                  _value = val;
                });
              },
            ),
            SizedBox(height: 0.7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2:25",
                  style: TextStyle(
                    color: const Color(0xff878787),
                    fontSize: 14.5.sp,
                  ),
                ),
                Text(
                  "4:02",
                  style: TextStyle(
                    color: const Color(0xff878787),
                    fontSize: 14.5.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svgs/Repeat.svg",
                  height: 2.7.h,
                ),
                SizedBox(width: 7.w),
                SvgPicture.asset(
                  "assets/svgs/Previous.svg",
                  height: 2.7.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xffA7A7A7),
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: 7.w),
                CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset(
                    "assets/svgs/Pause.svg",
                    height: 2.7.h,
                  ),
                ),
                SizedBox(width: 7.w),
                SvgPicture.asset(
                  "assets/svgs/Next.svg",
                  height: 2.7.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xffA7A7A7),
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: 7.w),
                SvgPicture.asset(
                  "assets/svgs/Shuffle.svg",
                  height: 2.7.h,
                ),
              ],
            ),
            SizedBox(height: 4.h),
            SvgPicture.asset("assets/svgs/lyrics.svg"),
            SizedBox(height: 0.5.h),
            Text(
              "Lyrics",
              style: TextStyle(
                fontSize: 15.5.sp,
                color: const Color(0xffB9B9B9),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
