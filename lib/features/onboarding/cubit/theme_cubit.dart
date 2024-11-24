import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  final box = Hive.box(name: 'myBox');

  ThemeCubit() : super(ThemeMode.dark) {
    final savedTheme = box.get("theme", defaultValue: "light");
    if (savedTheme == "dark") {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.light);
    }
  }

  void updateTheme(ThemeMode mode) {
    emit(mode);
    if (mode == ThemeMode.light) {
      return box.put("theme", "light");
    }
    box.put("theme", "dark");
  }
}
