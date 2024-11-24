import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/custom_app_bar.dart';
import 'package:spotify_clone/features/songs/widgets/album_card.dart';
import 'package:spotify_clone/features/songs/widgets/playlist_item.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({super.key});

  static route(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ArtistPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 28.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.w),
                bottomRight: Radius.circular(15.w),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/intro_bg.png",
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CustomAppBar(),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.5.h),
                      Text(
                        "Billie Eilish",
                        style: TextStyle(
                          color: const Color(0xffE3E3E3),
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        "2 Albums, 67 Tracks",
                        style: TextStyle(
                          color: const Color(0xffD3D3D3),
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 1.5.h),
                      SizedBox(
                        width: 75.w,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xffA7A7A7),
                            fontSize: 15.5.sp,
                            height: 0,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Albums",
                          style: TextStyle(
                            color: const Color(0xffDDDDDD),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 7.w),
                      const AlbumCard(),
                      SizedBox(width: 3.w),
                      const AlbumCard(),
                      SizedBox(width: 3.w),
                      const AlbumCard(),
                      SizedBox(width: 3.w),
                      const AlbumCard(),
                      SizedBox(width: 3.w),
                      const AlbumCard(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.5.h),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Songs",
                          style: TextStyle(
                            color: const Color(0xffDDDDDD),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                      SizedBox(height: 2.h),
                      const PlaylistItem(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
