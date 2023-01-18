import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/database.dart';
import 'package:learning_platform_app_ui/screens/one_category_courses_screen/components/all_courses_label.dart';
import 'package:learning_platform_app_ui/screens/one_category_courses_screen/components/back_button.dart';
import 'package:learning_platform_app_ui/screens/one_category_courses_screen/components/one_cat_all_course_listview.dart';

class OneCategoryCourseScreen extends StatelessWidget {
  final String category;
  OneCategoryCourseScreen({super.key, required this.category}) {
    bannerLink = Database().eachCategoryBanner(category);
  }

  late String bannerLink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.network(
                      bannerLink,
                      fit: BoxFit.cover,
                    ),
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllCoursesLabel(
                        category: category,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                          child:
                              OneCategoryAllCourseListView(category: category))
                    ],
                  ),
                ),
              )
            ],
          ),
          const Positioned(left: 20, top: 20, child: CourseBackButton())
        ],
      )),
    );
  }
}
