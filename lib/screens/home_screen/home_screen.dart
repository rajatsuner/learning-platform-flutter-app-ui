import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';
import 'package:learning_platform_app_ui/screens/home_screen/components/categories_listview.dart';
import 'package:learning_platform_app_ui/screens/home_screen/components/home_screen_appbar.dart';
import 'package:learning_platform_app_ui/screens/home_screen/components/popular_course_label_widget.dart';
import 'package:learning_platform_app_ui/screens/home_screen/components/popular_courses_listview.dart';
import 'package:learning_platform_app_ui/screens/home_screen/components/searchbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80), child: HomeScreenAppBar()),
        drawer: const Drawer(
          backgroundColor: ThemeInfo.kWhite,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              //search bar
              const SearchBarWidget(),
              const SizedBox(
                height: 35,
              ),
              // Categories list widget
              CategoriesListView(),

              const SizedBox(
                height: 40,
              ),

              //Popular courses label
              const PopularCourseLabelWidget(),

              const SizedBox(
                height: 30,
              ),

              //Popular Courses listview
              PopularCoursesListView()
            ],
          ),
        ),
      ),
    );
  }
}
