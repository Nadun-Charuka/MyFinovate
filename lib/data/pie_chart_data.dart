import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSampleData {
  final List<PieChartSectionData> pieChartSectionData;

  PieChartSampleData({
    required double year1Percentage,
    required double year3Percentage,
    required double year10Percentage,
    required Color color1,
    required Color color2,
    required Color color3,
  }) : pieChartSectionData = [
          PieChartSectionData(
            color: color1,
            value: year1Percentage,
            radius: 14,
            title: '${year1Percentage.toStringAsFixed(1)}%',
          ),
          PieChartSectionData(
            color: color2,
            value: year3Percentage,
            radius: 12,
            title: '${year3Percentage.toStringAsFixed(1)}%',
          ),
          PieChartSectionData(
            color: color3,
            value: year10Percentage,
            radius: 10,
            title: '${year10Percentage.toStringAsFixed(1)}%',
          ),
        ];
}
