import 'package:advanced_navigation/src/screens/first_page.dart';
import 'package:advanced_navigation/src/screens/second_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => AdvancedNavigation());
      case '/second':
        final data = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => SecondPage(data: data));
    }
    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(
    builder: (context) => Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('Error'),
      ),
    ),
  );
}
