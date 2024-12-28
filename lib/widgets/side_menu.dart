import 'package:fitness_tracker_v90/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  final Function(int) onMenuTap;

  const SideMenu({super.key, required this.onMenuTap});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // Index tracker
  int selectedIndex = 0;

  // Create an object of SideMenuData
  final sideMenuData = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Container(
        color: Theme.of(context)
            .scaffoldBackgroundColor, // Dynamic background color
        child: ListView.builder(
          itemCount: sideMenuData.sideMenuList.length,
          itemBuilder: (context, index) {
            return _sideMenuItemCard(context, sideMenuData, index);
          },
        ),
      ),
    );
  }

  Widget _sideMenuItemCard(
      BuildContext context, SideMenuData sideMenuData, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          widget.onMenuTap(index); // Trigger navigation callback
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selectedIndex == index
                ? Theme.of(context)
                    .primaryColor
                    .withOpacity(0.2) // Dynamic selected background color
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  sideMenuData.sideMenuList[index].icon,
                  color: selectedIndex == index
                      ? Theme.of(context)
                          .primaryColor // Dynamic selected icon color
                      : Theme.of(context)
                          .iconTheme
                          .color, // Dynamic default icon color
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  sideMenuData.sideMenuList[index].title,
                  style: TextStyle(
                    fontWeight: selectedIndex == index
                        ? FontWeight.w900
                        : FontWeight.w400,
                    color: selectedIndex == index
                        ? Theme.of(context)
                            .primaryColor // Dynamic selected text color
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .color, // Dynamic default text color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
