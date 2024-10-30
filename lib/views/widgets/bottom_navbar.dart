import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;

  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article_outlined),
          label: 'Records',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
        )
      ],
      onTap: (index) {
        if (index == selectedIndex) {
          return;
        }

        switch (index) {
          case 0:
            setSelectedIndex(0);
            GoRouter.of(context).go('/app');
            return;
          case 1:
            setSelectedIndex(1);
            GoRouter.of(context).go('/app/records');
            return;
          case 2:
            setSelectedIndex(2);
            GoRouter.of(context).go('/app/settings');
            return;
          default:
            return;
        }
      },
    );
  }
}