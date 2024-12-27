import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //index tracker
  int selectedIndex = 0;

  //create an object of SideMenuData
  final sideMenuData = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Container(
        color: bgColor,
        child: ListView.builder(
          itemCount: sideMenuData.sideMenuList.length,
          itemBuilder: (context, index) {
            // I switch from this method because adomic arts use another way
            //access a current index of SideMenuItem in sideMenuList in sideMenuData object which create in the widget class
            // SideMenuItem item = sideMenuData.sideMenuList[index];
            return _sideMenuItemCard(sideMenuData, index);
          },
        ),
      ),
    );
  }

  Widget _sideMenuItemCard(SideMenuData sideMenuData, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (selectedIndex == index ? sectionColor : Colors.transparent),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  sideMenuData.sideMenuList[index].icon,
                  color: (selectedIndex == index ? Colors.black : greyColor),
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
                    color: (selectedIndex == index ? Colors.black : greyColor),
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
