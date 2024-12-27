import 'package:fitness_tracker_v90/data/health_activity_data.dart';
import 'package:fitness_tracker_v90/utils/responsive.dart';
import 'package:fitness_tracker_v90/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthActivityData = HealthActivityData();
    final isMobile = Responsive.isMobile(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Force evaluation of Theme.of(context) after build
      Theme.of(context).textTheme.bodyLarge;
      Theme.of(context).textTheme.bodyMedium;
    });

    return GridView.builder(
      itemCount: healthActivityData.healthActivityModelList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            children: [
              const Spacer(flex: 3),
              Image.asset(
                healthActivityData.healthActivityModelList[index].icon,
                width: 50,
              ),
              const Spacer(flex: 1),
              Text(
                healthActivityData.healthActivityModelList[index].value,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
              const Spacer(flex: 1),
              Text(
                healthActivityData.healthActivityModelList[index].title,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                  fontSize: 10,
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
        );
      },
    );
  }
}
