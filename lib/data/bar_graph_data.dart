import 'package:fitness_tracker_v90/models/bar_graph_model.dart';
import 'package:fitness_tracker_v90/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphData {
  final List<BarGraphModel> barGraphList;
  final List<String> label = ["M", "T", "W", "T", "F", "S"];

  BarGraphData({
    required Color color1,
    required Color color2,
    required Color color3,
    required Color color4,
  }) : barGraphList = [
          BarGraphModel(
            lable: "Over roll Usage",
            color: color1,
            graph: [
              GraphModel(x: 0, y: 8),
              GraphModel(x: 1, y: 10),
              GraphModel(x: 2, y: 7),
              GraphModel(x: 3, y: 4),
              GraphModel(x: 4, y: 1),
              GraphModel(x: 5, y: 6),
            ],
          ),
          BarGraphModel(
            lable: "Basic Savings Plan",
            color: color2,
            graph: [
              GraphModel(x: 0, y: 8),
              GraphModel(x: 1, y: 10),
              GraphModel(x: 2, y: 9),
              GraphModel(x: 3, y: 6),
              GraphModel(x: 4, y: 6),
              GraphModel(x: 5, y: 7),
            ],
          ),
          BarGraphModel(
            lable: "Growth Savings Plan",
            color: color3,
            graph: [
              GraphModel(x: 0, y: 1),
              GraphModel(x: 1, y: 1),
              GraphModel(x: 2, y: 3),
              GraphModel(x: 3, y: 2),
              GraphModel(x: 4, y: 5),
              GraphModel(x: 5, y: 9),
            ],
          ),
          BarGraphModel(
            lable: "Advanced Portfolio Plan",
            color: color4,
            graph: [
              GraphModel(x: 0, y: 0),
              GraphModel(x: 1, y: 1),
              GraphModel(x: 2, y: 1),
              GraphModel(x: 3, y: 0),
              GraphModel(x: 4, y: 0),
              GraphModel(x: 5, y: 3),
            ],
          ),
        ];
}
