import 'package:fitness_tracker_v90/models/health_activity_model.dart';

class HealthActivityData {
  List<HealthActivityModel> healthActivityModelList = [
    HealthActivityModel(
      icon: "assets/icons/total_invesment.png",
      value: "230",
      title: "Total Investments",
    ),
    HealthActivityModel(
      icon: "assets/icons/portfolio_growth.png",
      value: "7.8K",
      title: "Portfolio Growth",
    ),
    HealthActivityModel(
      icon: "assets/icons/pending_loan.png",
      value: "340m",
      title: "Pending Loan",
    ),
    HealthActivityModel(
      icon: "assets/icons/saving.png",
      value: "7h48m",
      title: "Savings Progress",
    ),
  ];
}
