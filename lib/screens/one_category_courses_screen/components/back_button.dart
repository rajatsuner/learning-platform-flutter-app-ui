import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class CourseBackButton extends StatelessWidget {
  const CourseBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: ThemeInfo.kLightGrey,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
              const Text(
                "Back",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
