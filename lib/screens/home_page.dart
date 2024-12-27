import 'package:fitness_tracker_v90/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_v90/widgets/dashboard.dart';
import 'package:fitness_tracker_v90/widgets/side_menu.dart';
import 'package:fitness_tracker_v90/widgets/summary.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return SafeArea(
      child: Scaffold(
        drawer: !isDesktop
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const SideMenu(),
              )
            : null,
        endDrawer: !isDesktop
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Summary(),
              )
            : null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                //Side Menu
                if (isDesktop)
                  const Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: SideMenu(),
                    ),
                  ),

                //DashBoard
                const Expanded(
                  flex: 7,
                  child: SizedBox(
                    child: Dashboard(),
                  ),
                ),
                //Summary
                if (isDesktop)
                  const Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Summary(),
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
