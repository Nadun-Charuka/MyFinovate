import 'package:fitness_tracker_v90/provider/theme_notifier.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
import 'package:fitness_tracker_v90/widgets/custom_theme_extension.dart';
import 'package:fitness_tracker_v90/widgets/investmen.dart';
import 'package:fitness_tracker_v90/widgets/pie_chart.dart';
import 'package:fitness_tracker_v90/widgets/schedule_widget.dart';
import 'package:fitness_tracker_v90/widgets/summary_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor, // Dynamic color
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //theme toggle button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dark Theme",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Switch(
                      value: themeNotifier.isDarkTheme,
                      onChanged: (value) {
                        themeNotifier.toggleTheme();
                      },
                    ),
                  ],
                ),
                Text(
                  "Interest Rates",
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .color, // Dynamic color
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SummaryDetails(),
                const InvestmentCalculator(),
                const Text(
                    "Potential returns over time (As a percentage of the total investment)"),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("For 1 year - "),
                        Container(
                          height: 10,
                          width: 10,
                          color: customColors?.blue ?? Colors.blue,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text("For 3 year - "),
                        Container(
                          height: 10,
                          width: 10,
                          color: customColors?.lightBlue ?? Colors.lightBlue,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text("For 10 year - "),
                        Container(
                          height: 10,
                          width: 10,
                          color: customColors?.brightGreen ?? Colors.green,
                        )
                      ],
                    ),
                  ],
                ),
                const PieChartCard(
                  year1Percentage: 20.0, // Dummy data for 1 year
                  year3Percentage: 30.0, // Dummy data for 3 years
                  year10Percentage: 50.0, // Dummy data for 10 years
                ),

                const CustomSizedBox2(),
                const ScheduleWidget(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
