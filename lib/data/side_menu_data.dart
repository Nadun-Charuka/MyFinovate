import 'package:fitness_tracker_v90/models/side_menu_item_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  List<SideMenuItem> sideMenuList = [
    SideMenuItem(
      icon: Icons.home,
      title: "Home",
    ),
    SideMenuItem(
      icon: Icons.currency_exchange,
      title: "Currency Exchange",
    ),
    SideMenuItem(
      icon: Icons.inventory,
      title: "Investments Plan",
    ),
    SideMenuItem(
      icon: Icons.dashboard,
      title: "Dashboard",
    ),
    SideMenuItem(
      icon: Icons.support_agent,
      title: "Customer Service",
    ),
    SideMenuItem(
      icon: Icons.settings,
      title: "Settings ",
    ),
    SideMenuItem(
      icon: Icons.person,
      title: "Profile",
    ),
    SideMenuItem(
      icon: Icons.logout,
      title: "Logout",
    ),
  ];
}
