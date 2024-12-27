import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDetails("Hatha Yoga", "Today 9AM -10AM"),
        _buildDetails("Body Combat", "Today 5AM -7AM"),
        _buildDetails("Body massage", "Today 9PM -10PM"),
      ],
    );
  }

  Widget _buildDetails(
    String title,
    String description,
  ) {
    return CustomCard(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: limeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: greyColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Icon(
            Icons.comment,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}
