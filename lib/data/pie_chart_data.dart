import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSampleData {
  final List<PieChartSectionData> pieChartSectionData;

  PieChartSampleData({
    required Color color1,
    required Color color2,
    required Color color3,
    required Color color4,
  }) : pieChartSectionData = [
          PieChartSectionData(
            color: color1,
            value: 30,
            showTitle: false,
            radius: 14,
          ),
          PieChartSectionData(
            color: color2,
            value: 25,
            showTitle: false,
            radius: 12,
          ),
          PieChartSectionData(
            color: color3,
            value: 20,
            showTitle: false,
            radius: 10,
          ),
          PieChartSectionData(
            color: color4,
            value: 10,
            showTitle: false,
            radius: 8,
          ),
        ];
}
