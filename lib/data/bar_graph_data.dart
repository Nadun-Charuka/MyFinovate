import 'package:fitness_tracker_v90/models/bar_graph_model.dart';
import 'package:fitness_tracker_v90/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphData {
  final barGraphList = [
    BarGraphModel(
      lable: "Calories Burned ",
      color: const Color.fromARGB(255, 38, 165, 249),
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
      lable: "Protein",
      color: const Color.fromARGB(255, 174, 0, 255),
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
      lable: "Carbs Intake",
      color: const Color.fromARGB(255, 3, 247, 178),
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    ),
    BarGraphModel(
      lable: "Calories",
      color: const Color.fromARGB(255, 190, 247, 3),
      graph: [
        GraphModel(x: 0, y: 6),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 3),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 9),
        GraphModel(x: 5, y: 6),
      ],
    ),
  ];
  final label = ["M", "T", "W", "T", "F", "S"];
}
