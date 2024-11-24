import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/features/onboarding/cubit/theme_cubit.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeMode currTheme = context.watch<ThemeCubit>().state;

    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: currTheme == ThemeMode.dark
                    ? [
                        const Color(0xff5B5B5B),
                        const Color(0xff252525),
                      ]
                    : [
                        const Color(0xffB0B0B0),
                        const Color(0xffD3D3D3),
                      ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Or"),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: currTheme == ThemeMode.dark
                    ? [
                        const Color(0xff252525),
                        const Color(0xff5B5B5B),
                      ]
                    : [
                        const Color(0xffD3D3D3),
                        const Color(0xffB0B0B0),
                      ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
