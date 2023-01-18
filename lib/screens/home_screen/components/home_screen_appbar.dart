import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.segment_outlined,
              size: 30,
            ),
          ),
          const Text(
            "Home",
            style: TextStyle(
                color: ThemeInfo.kBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("assets/bird.jpg"),
          ),
        ],
      ),
    );
  }
}
