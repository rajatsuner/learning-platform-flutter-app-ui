import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';
import 'package:learning_platform_app_ui/database.dart';
import 'package:learning_platform_app_ui/models/course_model.dart';

class OneCategoryAllCourseListView extends StatelessWidget {
  final String category;
  OneCategoryAllCourseListView({super.key, required this.category}) {
    _addCourses();
  }

  List<CourseModel> allCoursesList = [];

  void _addCourses() {
    List<dynamic> data = Database().eachCategoryData(category);
    for (var eachData in data) {
      allCoursesList.add(CourseModel(
          icon: eachData["icon"],
          color: eachData["color"],
          title: eachData["title"],
          numberOfLessons: eachData["numberOfLessons"],
          duration: eachData["duration"]));
    }
  }

  Widget _eachItem(int index) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: ThemeInfo.kWhite,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: const Color.fromARGB(255, 224, 224, 225), width: 1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ThemeInfo.kWhite,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: allCoursesList[index].color.withOpacity(0.4),
                        width: 1)),
                child: Icon(
                  allCoursesList[index].icon,
                  color: allCoursesList[index].color,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    allCoursesList[index].title,
                    style: const TextStyle(
                        color: ThemeInfo.kBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 0.2),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Total ${allCoursesList[index].numberOfLessons} Lessons & ${allCoursesList[index].duration}",
                    style: const TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 99, 98, 103)),
                  )
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.expand_more),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: allCoursesList.length,
        itemBuilder: ((context, index) {
          return _eachItem(index);
        }));
  }
}
