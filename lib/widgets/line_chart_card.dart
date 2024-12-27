import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/data/line_chart_data.dart';
import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final lineData = LineData();
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Steps Overeview",
            style: TextStyle(
              fontSize: 14,
              color: greyColor,
            ),
          ),
          const CustomSizedBox2(),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                titlesData: FlTitlesData(
                  //bottomside titles
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return lineData.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  lineData.bottomTitle[value.toInt()]
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: greyColor,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),

                  //leftside titles
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        reservedSize: 40,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return lineData.leftTitle[value.toInt()] != null
                              ? Text(
                                  lineData.leftTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: greyColor,
                                  ),
                                )
                              : const SizedBox();
                        }),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: sectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        colors: [
                          sectionColor.withOpacity(.5),
                          Colors.transparent
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      show: true,
                    ),
                    dotData: const FlDotData(
                      show: false,
                    ),
                    spots: lineData.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: 0,
                maxY: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
