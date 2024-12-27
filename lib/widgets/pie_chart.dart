import 'package:fitness_tracker_v90/data/pie_chart_data.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'custom_theme_extension.dart';

class PieChartCard extends StatelessWidget {
  final double year1Percentage;
  final double year3Percentage;
  final double year10Percentage;

  const PieChartCard({
    super.key,
    required this.year1Percentage,
    required this.year3Percentage,
    required this.year10Percentage,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    final pieChartData = PieChartSampleData(
      year1Percentage: year1Percentage,
      year3Percentage: year3Percentage,
      year10Percentage: year10Percentage,
      color1: customColors?.blue ?? Colors.blue,
      color2: customColors?.lightBlue ?? Colors.lightBlue,
      color3: customColors?.brightGreen ?? Colors.green,
    );

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 90,
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
                  "    Total \n\ninvestment", // Main statistic
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .color, // Dynamic primary color
                    fontWeight: FontWeight.w600,
                    height: 0.6,
                    fontSize: 25,
                  ),
                ),
                const CustomSizedBox1(),
                Text(
                  "LKR - 156,322", // Supporting text
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .color!
                        .withOpacity(
                            0.8), // Dynamic secondary color with opacity
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
