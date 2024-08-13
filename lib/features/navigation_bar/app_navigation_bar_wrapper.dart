import 'package:di_example/features/navigation_bar/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppNavigationBarWrapper extends StatelessWidget {
  const AppNavigationBarWrapper({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
