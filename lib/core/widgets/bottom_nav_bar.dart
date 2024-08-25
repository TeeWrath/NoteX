import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
              // fixedColor: AppTheme.dark().scaffoldBackgroundColor,
              selectedItemColor: AppTheme.dark().colorScheme.secondary,
              unselectedItemColor: const Color.fromARGB(255, 247, 248, 252),
              elevation: 10,
              currentIndex: 2,
              showSelectedLabels: false,
              iconSize: 30,
              // backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                    label: 'Home',
                    icon: const Icon(Icons.home_outlined)),
                BottomNavigationBarItem(
                    backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                    label: 'Notes',
                    icon: const Icon(Icons.note_alt_outlined)),
                BottomNavigationBarItem(
                    backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                    label: 'Hackathons',
                    icon: const Icon(Icons.lightbulb_outline)),
                BottomNavigationBarItem(
                    backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                    label: 'Saved',
                    icon: const Icon(Icons.save_outlined)),
                BottomNavigationBarItem(
                  backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                  label: 'Profile',
                  icon: CircleAvatar(
                    maxRadius: 40.r,
                    foregroundImage: const AssetImage('assets/catpfp.png'),
                  ),
                ),
              ]);
  }
}