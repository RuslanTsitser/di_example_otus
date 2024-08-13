import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: getSelectedIndex(context),
      onTap: (value) => onItemTapped(value, context),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Recipes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Auth',
        ),
      ],
    );
  }

  int getSelectedIndex(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    return switch (currentRoute) {
      '/' => 0,
      _ => 1,
    };
  }

  void onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.of(context).pushReplacementNamed('/');
        break;
      case 1:
        Navigator.of(context).pushReplacementNamed('/auth');
        break;
    }
  }
}
