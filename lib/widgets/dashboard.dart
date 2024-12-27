import 'package:fitness_tracker_v90/widgets/activity_widget.dart';
import 'package:fitness_tracker_v90/widgets/bar_graph_card.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:fitness_tracker_v90/widgets/header_widget.dart';
import 'package:fitness_tracker_v90/widgets/line_chart_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomSizedBox1(),
            HeaderWidget(),
            CustomSizedBox1(),
            ActivityWidget(),
            CustomSizedBox1(),
            LineChartCard(),
            CustomSizedBox1(),
            BarGraphCard(),
            CustomSizedBox2(),
          ],
        ),
      ),
    );
  }
}
