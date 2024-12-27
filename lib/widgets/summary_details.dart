import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Theme.of(context).cardColor, // Dynamic card background color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDetails(context, "Cal", "305"),
          _buildDetails(context, "Steps", "10232"),
          _buildDetails(context, "Distance", "7km"),
          _buildDetails(context, "Sleep", "7h"),
        ],
      ),
    );
  }

  Widget _buildDetails(
    BuildContext context,
    String key,
    String value,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 11,
            color: Theme.of(context)
                .textTheme
                .bodyLarge!
                .color, // Dynamic key text color
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 10,
            color: Theme.of(context)
                .textTheme
                .bodyMedium!
                .color, // Dynamic value text color
          ),
        )
      ],
    );
  }
}
