import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDetails(context, "Loan due", "Today 9AM "),
        _buildDetails(context, "Payement Cancelled", "Today 5AM"),
        _buildDetails(context, "Interest debit", "Yesterday 10PM"),
      ],
    );
  }

  Widget _buildDetails(
    BuildContext context,
    String title,
    String description,
  ) {
    return CustomCard(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Theme.of(context).cardColor, // Dynamic card color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .color, // Dynamic text color
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .color, // Dynamic secondary text color
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Icon(
            Icons.comment,
            color: Theme.of(context).iconTheme.color, // Dynamic icon color
          ),
        ],
      ),
    );
  }
}
