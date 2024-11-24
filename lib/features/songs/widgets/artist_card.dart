import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_clone/features/songs/screens/music_page.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MusicPage.route(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.zero,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: SizedBox(
              height: 20.h,
              width: Device.screenType == ScreenType.tablet ? 25.w : 35.w,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/artist1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Align(
                    alignment: const Alignment(0.9, 1.2),
                    child: CircleAvatar(
                      radius: 1.7.h,
                      backgroundColor: const Color(0xff2C2C2C),
                      child: SvgPicture.asset("assets/svgs/Play.svg"),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 10),
            child: Text(
              "Bad Guy",
              style: TextStyle(
                color: const Color(0xffE1E1E1),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Billie Eilish",
              style: TextStyle(
                color: const Color(0xffE1E1E1),
                fontSize: 15.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
