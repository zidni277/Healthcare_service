import 'package:flutter/material.dart';
import '/features/screens/get_started_screen.dart';
import '/features/screens/insurance_detail_screen.dart';
import '/features/screens/statistics_screen.dart';

class RouteUtils {
  static const String getStarted = '/getStarted';
  static const String insuranceDetail = '/insurance-detail';
  static const String statistics = '/statistics';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case getStarted:
        return MaterialPageRoute(builder: (_) => GetStartedScreen());
      case insuranceDetail:
        return MaterialPageRoute(builder: (_) => InsuranceDetailScreen());
      case statistics:
        return MaterialPageRoute(builder: (_) => StatisticsScreen());
      default:
        return MaterialPageRoute(builder: (_) => GetStartedScreen());
    }
  }
}
