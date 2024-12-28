import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:fitness_tracker_v90/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_v90/widgets/activity_widget.dart';
import 'package:fitness_tracker_v90/widgets/currency_exchange.dart';
import 'package:fitness_tracker_v90/widgets/investment_plan_card.dart';
import 'package:fitness_tracker_v90/widgets/line_chart_card.dart';
import 'package:fitness_tracker_v90/widgets/bar_graph_card.dart';

class Dashboard extends StatefulWidget {
  final ScrollController scrollController;

  const Dashboard({super.key, required this.scrollController});

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  final GlobalKey _activityKey = GlobalKey();
  final GlobalKey _currencyKey = GlobalKey();
  final GlobalKey _investmentKey = GlobalKey();
  final GlobalKey _lineChartKey = GlobalKey();

  // Expose keys via getters
  GlobalKey get activityKey => _activityKey;
  GlobalKey get currencyKey => _currencyKey;
  GlobalKey get investmentKey => _investmentKey;
  GlobalKey get lineChartKey => _lineChartKey;

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomSizedBox2(),
            const HeaderWidget(),
            const CustomSizedBox2(),
            ActivityWidget(key: _activityKey),
            const CustomSizedBox2(),
            CurrencyExchange(key: _currencyKey),
            const CustomSizedBox2(),
            InvestmentPlanCards(key: _investmentKey),
            const CustomSizedBox2(),
            LineChartCard(key: _lineChartKey),
            const CustomSizedBox2(),
            const BarGraphCard(),
            const CustomSizedBox2(),
            const CustomSizedBox2(),
          ],
        ),
      ),
    );
  }
}
