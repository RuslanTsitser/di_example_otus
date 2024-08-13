import 'package:di_example/features/navigation_bar/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Auth Screen'),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
