import 'package:flutter/material.dart';
import 'core/utils/route_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Health Insurance App",
      theme: ThemeData.dark(),
      initialRoute: RouteUtils.getStarted,
      onGenerateRoute: RouteUtils.generateRoute,
    );
  }
}
