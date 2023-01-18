import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class PopularCourseLabelWidget extends StatelessWidget {
  const PopularCourseLabelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25),
      child: Text(
        "Popular Courses",
        style: TextStyle(
            color: ThemeInfo.kBlack, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
