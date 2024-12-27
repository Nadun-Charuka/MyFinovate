import 'package:fitness_tracker_v90/constants/colors.dart';
import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: limeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDetails("Cal", "305"),
          _buildDetails("Steps", "10232"),
          _buildDetails("Distance", "7km"),
          _buildDetails("Sleep", "7h"),
        ],
      ),
    );
  }

  Widget _buildDetails(
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
            color: secondaryColor,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 10,
            color: greyColor,
          ),
        )
      ],
    );
  }
}
