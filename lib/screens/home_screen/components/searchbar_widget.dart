import 'package:flutter/material.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: ThemeInfo.kLightGrey,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromARGB(255, 224, 224, 225), width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 10,
                ),
                //Search Icon
                const Icon(
                  Icons.search,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                //Search text,
                const Text(
                  "Search",
                  style: TextStyle(color: ThemeInfo.kDarkGrey, fontSize: 18),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //Voice mic icon
                const Icon(
                  Icons.mic_none_outlined,
                  size: 25,
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
