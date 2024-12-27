import 'package:fitness_tracker_v90/provider/theme_notifier.dart';
import 'package:fitness_tracker_v90/widgets/custom_sized_box.dart';
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
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor, // Dynamic color
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PieChartCard(),
              Text(
                "Summary",
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .color, // Dynamic color
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const CustomSizedBox1(),
              const SummaryDetails(),
              const CustomSizedBox2(),
              const ScheduleWidget(),
              const SizedBox(height: 16), // Add spacing before the switch
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Enable Dark Theme",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Switch(
                    value: themeNotifier.isDarkTheme,
                    onChanged: (value) {
                      themeNotifier.toggleTheme();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
