import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/data/bar_graph_data.dart';
import 'package:fitness_tracker_v90/models/graph_model.dart';
import 'package:fitness_tracker_v90/utils/responsive.dart';
import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final barGraphData = BarGraphData();
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: barGraphData.barGraphList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomCard(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    barGraphData.barGraphList[index].lable,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: greyColor,
                    ),
                  ),
                ),
                //bargraph
                const CustomSizedBox1(),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      barGroups: _chartGroups(
                        color: barGraphData.barGraphList[index].color,
                        points: barGraphData.barGraphList[index].graph,
                      ),
                      borderData: FlBorderData(
                        border: const Border(),
                      ),
                      titlesData: FlTitlesData(
                        //remove the left title
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                          ),
                        ),
                        //remove the left title
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                          ),
                        ),
                        //remove the top title
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                          ),
                        ),

                        //bottom titles
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  barGraphData.label[value.toInt()],
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: greyColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
