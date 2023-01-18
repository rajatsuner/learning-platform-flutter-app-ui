import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class AllCoursesLabel extends StatelessWidget {
  final String category;
  const AllCoursesLabel({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Text(
      "All $category Courses",
      style: const TextStyle(
          wordSpacing: 2,
          color: ThemeInfo.kBlack,
          fontWeight: FontWeight.bold,
          fontSize: 20),
    );
  }
}
