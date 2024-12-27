import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Row(
      children: [
        //show the munu widget
        if (!isDesktop)
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: greyColor,
              ),
            ),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        Expanded(
          child: TextField(
            style: TextStyle(color: greyColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBgColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: greyColor),
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: greyColor,
            ),
          ),
        ),
        //show the summary widget
        if (!isDesktop)
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/avatar.jpg",
                  width: 40,
                ),
              ),
            ),
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
      ],
    );
  }
}
