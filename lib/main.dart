import 'package:flutter/material.dart';
import 'package:flutter_100_days_ui_challange/day_1/yacht_rental_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: YachtRentalApp());
  }
}

List<NavigationListItem> pageList = [
  NavigationListItem(name: 'Yacht Rental App', page: YachtRentalApp()),
];

class NavigationListItem {
  final String name;
  final Widget page;

  NavigationListItem({required this.name, required this.page});
}
