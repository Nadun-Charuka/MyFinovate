import 'package:flutter/material.dart';

class InvestmentCalculator extends StatelessWidget {
  const InvestmentCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Investment Calculator",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
          ),
          const SizedBox(height: 16),
          _buildInputSection(context),
        ],
      ),
    );
  }

  Widget _buildInputSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Investment Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
          const SizedBox(height: 8),
          _buildTextInput(context, "Initial Investment (GBP)", "e.g., 5000"),
          const SizedBox(height: 8),
          _buildTextInput(context, "Monthly Contribution (GBP)", "e.g., 200"),
          const SizedBox(height: 8),
          _buildDropdown(
              context, "Investment Type", ["Basic", "Growth", "Advanced"]),
        ],
      ),
    );
  }

  Widget _buildTextInput(BuildContext context, String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .color
                    ?.withOpacity(0.5)),
            filled: true,
            fillColor: Theme.of(context).cardColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(
      BuildContext context, String label, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
        const SizedBox(height: 4),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).cardColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
          value: options[0],
          items: options.map((option) {
            return DropdownMenuItem(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: (value) {
            // Handle dropdown change
          },
        ),
      ],
    );
  }
}
