import 'package:fitness_tracker_v90/data/pie_chart_data.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = PieChartSampleData();

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections:
                  pieChartData.pieChartSectionData, // Data remains unchanged
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomSizedBox1(),
                Text(
                  "70%", // Main statistic
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context)
                            .primaryColor, // Dynamic primary color
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                        fontSize: 25,
                      ),
                ),
                const CustomSizedBox1(),
                Text(
                  "of 100%", // Supporting text
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .color!
                            .withOpacity(
                                0.5), // Dynamic secondary color with opacity
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
