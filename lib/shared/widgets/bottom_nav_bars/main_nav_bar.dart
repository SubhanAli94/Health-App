import 'package:flutter/material.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      selectedItemColor: colorTheme.primary,
      unselectedItemColor: colorTheme.onSurface.withOpacity(0.5),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 14,
      selectedLabelStyle: textTheme.bodySmall,
      unselectedLabelStyle: textTheme.bodySmall,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        switch (index) {
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          default:
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Discover'),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined), label: 'Booking'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Chat'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), label: 'Profile'),
      ],
    );
  }
}
