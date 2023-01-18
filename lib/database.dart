import 'package:flutter/material.dart';

class Database {
  // ignore: prefer_final_fields
  var _data = {
    "categories": [
      {
        "text": "Design",
        "iconPath": "assets/icons/design.png",
        "backgroundColor": const Color(0xfffef8e3)
      },
      {
        "text": "Language",
        "iconPath": "assets/icons/language.png",
        "backgroundColor": const Color(0xfff1f2ff)
      },
      {
        "text": "Cooking",
        "iconPath": "assets/icons/cooking.png",
        "backgroundColor": const Color(0xfffdf5ff)
      }
    ],
    "popularCourses": [
      {
        "imageLink":
            "https://thumbs.dreamstime.com/z/family-culinary-course-teaching-cook-home-kitchen-family-culinary-course-mother-teaching-her-daughter-how-to-cook-home-kitchen-151081739.jpg",
        "title": "Teaches Cooking Seafood, Sous Vide and Dessert",
        "numberOfLessons": 17,
        "duration": "4h 35m"
      },
      {
        "imageLink":
            "https://www.pivotpoint.edu/wp-content/uploads/2021/08/BC_GAS-0212-2048x1365.jpg",
        "title": "Beginner to Pro in Barber with 25 styles",
        "numberOfLessons": 26,
        "duration": "10h 35m"
      },
      {
        "imageLink":
            "https://thumbs.dreamstime.com/z/family-culinary-course-teaching-cook-home-kitchen-family-culinary-course-mother-teaching-her-daughter-how-to-cook-home-kitchen-151081739.jpg",
        "title": "Teaches Cooking Seafood, Sous Vide and Dessert",
        "numberOfLessons": 17,
        "duration": "4h 35m"
      },
      {
        "imageLink":
            "https://www.pivotpoint.edu/wp-content/uploads/2021/08/BC_GAS-0212-2048x1365.jpg",
        "title": "Beginner to Pro in Barber with 25 styles",
        "numberOfLessons": 26,
        "duration": "10h 35m"
      },
    ]
  };

  var _categoryData = {
    "Design": {
      "bannerLink":
          "https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2019/11/23171928/Product-Design-Courses.png",
      "data": [
        {
          "icon": Icons.folder,
          "title": "Web Design",
          "color": Color.fromRGBO(101, 119, 255, 1),
          "numberOfLessons": 17,
          "duration": "6h 36m"
        },
        {
          "icon": Icons.local_fire_department,
          "title": "Graphic Design",
          "color": Color.fromARGB(255, 255, 181, 101),
          "numberOfLessons": 11,
          "duration": "5h 12m"
        },
        {
          "icon": Icons.mouse_outlined,
          "title": "User Interface Design",
          "color": Colors.redAccent,
          "numberOfLessons": 15,
          "duration": "6h 36m"
        },
        {
          "icon": Icons.edit_road,
          "title": "User Experience Design",
          "color": Colors.grey,
          "numberOfLessons": 12,
          "duration": "6h 6m"
        }
      ]
    },
    "Language": {
      "bannerLink":
          "https://www.nordictrans.com/wp-content/uploads/2021/08/list-language-to-learn.jpg",
      "data": [
        {
          "icon": Icons.folder,
          "title": "Web Design",
          "color": Color.fromRGBO(101, 119, 255, 1),
          "numberOfLessons": 17,
          "duration": "6h 36m"
        },
        {
          "icon": Icons.local_fire_department,
          "title": "Graphic Design",
          "color": Color.fromARGB(255, 255, 181, 101),
          "numberOfLessons": 11,
          "duration": "5h 12m"
        },
        {
          "icon": Icons.mouse_outlined,
          "title": "User Interface Design",
          "color": Colors.redAccent,
          "numberOfLessons": 15,
          "duration": "6h 36m"
        },
        {
          "icon": Icons.edit_road,
          "title": "User Experience Design",
          "color": Colors.grey,
          "numberOfLessons": 12,
          "duration": "6h 6m"
        }
      ]
    },
    "Cooking": {
      "bannerLink": "https://cdn.fs.teachablecdn.com/yYUdS1xSIKHKXCAsKLET",
      "data": [
        {
          "icon": Icons.folder,
          "title": "Web Design",
          "color": Color.fromRGBO(101, 119, 255, 1),
          "numberOfLessons": 17,
          "duration": "6h 36m"
        },
        {
          "icon": Icons.local_fire_department,
          "title": "Graphic Design",
          "color": Color.fromARGB(255, 255, 181, 101),
          "numberOfLessons": 11,
          "duration": "5h 12m"
        },
        {
          "icon": Icons.mouse_outlined,
          "title": "User Interface Design",
          "color": Colors.redAccent,
          "numberOfLessons": 15,
          "duration": "6h 36m"
        },
        {
          "icon": Icons.edit_road,
          "title": "User Experience Design",
          "color": Colors.grey,
          "numberOfLessons": 12,
          "duration": "6h 6m"
        }
      ]
    }
  };

  dynamic eachCategoryData(String catType) {
    return _categoryData[catType]!["data"];
  }

  dynamic eachCategoryBanner(String catType) {
    return _categoryData[catType]!["bannerLink"];
  }

  get popularCoursesData => _data["popularCourses"];
  get categoriesData => _data["categories"];
}
