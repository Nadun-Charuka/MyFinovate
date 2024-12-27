import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSampleData {
  final pieChartSectionData = [
    PieChartSectionData(
      color: const Color(0xff2697ff),
      value: 30,
      showTitle: false,
      radius: 14,
    ),
    PieChartSectionData(
      color: const Color(0xff26e5ff),
      value: 25,
      showTitle: false,
      radius: 12,
    ),
    PieChartSectionData(
      color: const Color.fromARGB(255, 42, 255, 38),
      value: 20,
      showTitle: false,
      radius: 10,
    ),
    PieChartSectionData(
      color: const Color(0xff26e5ff),
      value: 10,
      showTitle: false,
      radius: 8,
    ),
  ];
}
