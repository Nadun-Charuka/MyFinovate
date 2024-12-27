import 'package:fitness_tracker_v90/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Row(
      children: [
        // Show the menu widget
        if (!isDesktop)
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Theme.of(context).iconTheme.color, // Dynamic icon color
              ),
            ),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        Expanded(
          child: TextField(
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .color), // Dynamic text color
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  Theme.of(context).cardColor, // Dynamic background color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor, // Dynamic border color
                ),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                  color: Theme.of(context).hintColor), // Dynamic hint color
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).iconTheme.color, // Dynamic icon color
              ),
            ),
          ),
        ),
        // Show the summary widget
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
