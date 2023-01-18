import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/database.dart';
import 'package:learning_platform_app_ui/models/category_model.dart';
import 'package:learning_platform_app_ui/screens/one_category_courses_screen/one_category_course_screen.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key}) {
    _addCategories();
  }

  List<CategoryModel> cateogoryList = [];

  void _addCategories() {
    List<dynamic> data = Database().categoriesData;

    for (var eachData in data) {
      cateogoryList.add(CategoryModel(
          iconPath: eachData["iconPath"],
          backgroundColor: eachData["backgroundColor"],
          text: eachData["text"]));
    }
  }

  Widget _eachItem(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => OneCategoryCourseScreen(
                      category: cateogoryList[index].text,
                    ))));
      },
      child: Container(
        height: 150,
        width: 105,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: ThemeInfo.kWhite,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: const Color.fromARGB(255, 224, 224, 225), width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 65,
              width: 65,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: cateogoryList[index].backgroundColor,
              ),
              child: Image.asset(
                cateogoryList[index].iconPath,
              ),
            ),
            Text(
              cateogoryList[index].text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 25),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cateogoryList.length,
                  itemBuilder: ((context, index) {
                    return _eachItem(index, context);
                  }))),
        ],
      ),
    );
  }
}
