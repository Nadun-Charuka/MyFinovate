import 'package:fitness_tracker_v90/models/health_activity_model.dart';

class HealthActivityData {
  List<HealthActivityModel> healthActivityModelList = [
    HealthActivityModel(
      icon: "assets/icons/total_invesment.png",
      value: "LKR 456,256.22",
      title: "Total Investments",
    ),
    HealthActivityModel(
      icon: "assets/icons/portfolio_growth.png",
      value: "1.6%",
      title: "Portfolio Growth",
    ),
    HealthActivityModel(
      icon: "assets/icons/pending_loan.png",
      value: "LKR 65,000",
      title: "Pending Loan",
    ),
    HealthActivityModel(
      icon: "assets/icons/saving.png",
      value: "LKR 500,000",
      title: "Savings Progress",
    ),
  ];
}
