import 'package:flutter/material.dart';

class AdvancedUserDataWidget extends StatelessWidget {
  final String name;
  final String company;
  final String email;
  final String imageAsset;
  final String currentPlan;
  final String dob;
  final String contact;

  const AdvancedUserDataWidget({
    super.key,
    required this.name,
    required this.company,
    required this.email,
    required this.imageAsset,
    required this.currentPlan,
    required this.dob,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // User Picture
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imageAsset),
                backgroundColor: Colors.grey[200],
              ),
              const SizedBox(height: 16),

              // User Name
              Text(
                name,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),

              // Company
              Text(
                company,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.grey[700],
                    ),
              ),
              const SizedBox(height: 8),

              // Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    size: 16,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Current Investment Plan
              _buildInfoRow(
                context,
                Icons.trending_up,
                "Current Plan",
                currentPlan,
              ),

              // Date of Birth
              _buildInfoRow(
                context,
                Icons.cake,
                "Date of Birth",
                dob,
              ),

              // Contact Number
              _buildInfoRow(
                context,
                Icons.phone,
                "Contact",
                contact,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build rows for additional info
  Widget _buildInfoRow(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 8),
          Text(
            "$label:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
