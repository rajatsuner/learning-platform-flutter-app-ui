import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/database.dart';
import 'package:learning_platform_app_ui/models/popular_course_model.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class PopularCoursesListView extends StatelessWidget {
  PopularCoursesListView({super.key}) {
    _addPopularCourses();
  }

  List<PopularCourseModel> popularCourseList = [];

  void _addPopularCourses() {
    List<dynamic> data = Database().popularCoursesData;
    for (var eachData in data) {
      popularCourseList.add(PopularCourseModel(
          imageLink: eachData["imageLink"],
          title: eachData["title"],
          numberOfLessons: eachData["numberOfLessons"],
          duration: eachData["duration"]));
    }
  }

  Widget _eachItem(int index) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 15, left: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 140.0,
            decoration: BoxDecoration(
              color: ThemeInfo.kLightGrey,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(popularCourseList[index].imageLink)),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
          ),
          Material(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            elevation: 5,
            child: Container(
              height: 140.0,
              padding: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: ThemeInfo.kWhite,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Title of course
                  Text(
                    popularCourseList[index].title,
                    style: const TextStyle(
                        color: ThemeInfo.kBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),

                  //Lessons and duration

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.padding_outlined,
                            color: ThemeInfo.kDarkGrey,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "${popularCourseList[index].numberOfLessons} Lessons",
                            style: const TextStyle(
                                color: ThemeInfo.kBlack, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.watch_later_sharp,
                            color: ThemeInfo.kDarkGrey,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "${popularCourseList[index].duration}",
                            style: const TextStyle(
                                color: ThemeInfo.kBlack, fontSize: 12),
                          ),
                          const SizedBox(
                            width: 15,
                          )
                        ],
                      )
                    ],
                  ),

                  //Start the course
                  Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 82, 97, 211),
                            radius: 20,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 20,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Start the course",
                            style: TextStyle(
                              color: ThemeInfo.kBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 25),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: popularCourseList.length,
                  itemBuilder: ((context, index) {
                    return _eachItem(index);
                  }))),
        ],
      ),
    );
  }
}
