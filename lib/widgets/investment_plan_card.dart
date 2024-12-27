import 'package:fitness_tracker_v90/widgets/custom_theme_extension.dart';
import 'package:flutter/material.dart';

class InvestmentPlanCards extends StatelessWidget {
  const InvestmentPlanCards({super.key});

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    final plans = [
      {
        "name": "Basic Savings Plan",
        "maxInvestment": "£25,000",
        "monthlyMinimum": "£50",
        "returns": "1%-2%",
        "taxFees": "No tax; 0.2% monthly fee",
        "icon": Icons.savings,
        "backgroundColor": Theme.of(context).cardColor,
        "titleColor": customColors?.brightPurple ?? Colors.purple,
        "detailColor": customColors?.neutralGrey ?? Colors.grey,
        "buttonColor": customColors?.cardBackground ?? Colors.black,
      },
      {
        "name": "Growth Savings Plan",
        "maxInvestment": "£40,000",
        "monthlyMinimum": "£100",
        "returns": "3%-6%",
        "taxFees": "5% tax above £10,000; 0.4% monthly fee",
        "icon": Icons.trending_up,
        "backgroundColor": Theme.of(context).cardColor,
        "titleColor": customColors?.brightGreen ?? Colors.green,
        "detailColor": customColors?.neutralGrey ?? Colors.grey,
        "buttonColor": customColors?.cardBackground ?? Colors.black,
      },
      {
        "name": "Advanced Portfolio Plan",
        "maxInvestment": "Unlimited",
        "monthlyMinimum": "£250",
        "returns": "5%-15%",
        "taxFees": "15%-20% tax on profits; 1% monthly fee",
        "icon": Icons.business_center,
        "backgroundColor": Theme.of(context).cardColor,
        "titleColor": customColors?.brightOrange ?? Colors.orange,
        "detailColor": customColors?.neutralGrey ?? Colors.grey,
        "buttonColor": customColors?.cardBackground ?? Colors.black,
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: plans.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final plan = plans[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            color: plan["backgroundColor"] as Color,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Plan Title
                  Row(
                    children: [
                      Icon(
                        plan["icon"] as IconData,
                        size: 40,
                        color: plan["titleColor"] as Color,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        plan["name"] as String,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: plan["titleColor"] as Color,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Plan Details
                  _buildPlanDetail(
                    context,
                    "Max Investment: ",
                    plan["maxInvestment"] as String,
                    plan["detailColor"] as Color,
                  ),
                  _buildPlanDetail(
                    context,
                    "Monthly Minimum: ",
                    plan["monthlyMinimum"] as String,
                    plan["detailColor"] as Color,
                  ),
                  _buildPlanDetail(
                    context,
                    "Returns: ",
                    plan["returns"] as String,
                    plan["detailColor"] as Color,
                  ),
                  _buildPlanDetail(
                    context,
                    "Tax & Fees: ",
                    plan["taxFees"] as String,
                    plan["detailColor"] as Color,
                  ),

                  const SizedBox(height: 16),

                  // Explore Button
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: plan["buttonColor"] as Color,
                      ),
                      onPressed: () {
                        // Add navigation or further action
                      },
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: plan["buttonColor"] as Color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPlanDetail(
    BuildContext context,
    String label,
    String value,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: color,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
