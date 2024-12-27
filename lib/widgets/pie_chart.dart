import 'package:fitness_tracker_v90/constants/colors.dart';
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
              sections: pieChartData.pieChartSectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomSizedBox1(),
                Text(
                  "70%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                        fontSize: 25,
                      ),
                ),
                const CustomSizedBox1(),
                Text(
                  "of 100%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: secondaryColor.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
