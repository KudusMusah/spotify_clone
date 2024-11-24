import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/core/common/widgets/custom_app_bar.dart';
import 'package:spotify_clone/core/constants/constants.dart';
import 'package:spotify_clone/core/themes/app_colors.dart';
import 'package:spotify_clone/features/onboarding/cubit/theme_cubit.dart';
import 'package:spotify_clone/features/songs/widgets/artist_card.dart';
import 'package:spotify_clone/features/songs/widgets/playlist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeMode currTheme = context.watch<ThemeCubit>().state;

    return Scaffold(
      appBar: CustomAppBar(
        isDarkTheme: currTheme == ThemeMode.dark,
        title: SvgPicture.asset(
          "assets/svgs/spotify_logo.svg",
          height: 3.8.h,
        ),
        leading: const Icon(CupertinoIcons.search),
        trailing: Icons.more_vert,
        onTap: () {},
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(7.w, 0, 7.w, 2.h),
            child: SizedBox(
              width: double.infinity,
              height: 18.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/images/frame2.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.7, 0),
                    child: Image.asset(
                      "assets/images/home_artist.png",
                      height: 18.h,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h),
          TabBar(
            tabs: Constants.songTypes
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 5, left: 10),
                    child: Text(e),
                  ),
                )
                .toList(),
            tabAlignment: TabAlignment.start,
            dividerHeight: 0,
            isScrollable: true,
            indicatorPadding: const EdgeInsets.only(left: 23, right: 13),
            indicatorColor: AppColors.primaryColor,
            automaticIndicatorColorAdjustment: true,
            controller: _tabController,
            unselectedLabelStyle: TextStyle(
              color: currTheme == ThemeMode.dark
                  ? AppColors.darkTabsColor
                  : const Color(0xffBEBEBE),
              fontSize: 17.5.sp,
              fontWeight: FontWeight.w600,
            ),
            labelStyle: TextStyle(
              color: currTheme == ThemeMode.dark
                  ? AppColors.whiteTextColor
                  : AppColors.blackColor,
              fontSize: 17.5.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2.5.h),
          SizedBox(
            height: 29.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ArtistCard(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ArtistCard(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ArtistCard(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Playlist",
                  style: TextStyle(
                    color: currTheme == ThemeMode.dark
                        ? AppColors.whiteTextColor
                        : AppColors.blackColor,
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See more",
                    style: TextStyle(
                      color: currTheme == ThemeMode.dark
                          ? const Color(0xffC6C6C6)
                          : const Color(0xff131313),
                      fontSize: 14.5.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
            child: Column(
              children: [
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
    );
  }
}
