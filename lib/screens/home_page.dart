import 'package:fitness_tracker_v90/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_v90/widgets/dashboard.dart';
import 'package:fitness_tracker_v90/widgets/side_menu.dart';
import 'package:fitness_tracker_v90/widgets/summary.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<DashboardState> _dashboardKey = GlobalKey();

  void _onMenuTap(int index) {
    switch (index) {
      case 0:
        _dashboardKey.currentState
            ?.scrollToSection(_dashboardKey.currentState!.activityKey);
        break;
      case 1:
        _dashboardKey.currentState
            ?.scrollToSection(_dashboardKey.currentState!.currencyKey);
        break;
      case 2:
        _dashboardKey.currentState
            ?.scrollToSection(_dashboardKey.currentState!.investmentKey);
        break;
      case 3:
        _dashboardKey.currentState
            ?.scrollToSection(_dashboardKey.currentState!.lineChartKey);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return SafeArea(
      child: Scaffold(
        drawer: !isDesktop
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SideMenu(onMenuTap: _onMenuTap),
              )
            : null,
        endDrawer: !isDesktop
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Summary(),
              )
            : null,
        body: SafeArea(
          child: Row(
            children: [
              if (isDesktop)
                Expanded(
                  flex: 2,
                  child: SideMenu(onMenuTap: _onMenuTap),
                ),
              Expanded(
                flex: 7,
                child: Dashboard(
                  key: _dashboardKey,
                  scrollController: _scrollController,
                ),
              ),
              if (isDesktop)
                const Expanded(
                  flex: 2,
                  child: Summary(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
