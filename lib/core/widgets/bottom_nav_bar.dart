import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/models/bottom_bar.dart';
import 'package:notex/providers/bottom_bar_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  BottomBar btm = BottomBar();

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBarProvider>(
      builder: (context, provider, child) {
        return BottomNavigationBar(
            // fixedColor: AppTheme.dark().scaffoldBackgroundColor,
            selectedItemColor: AppTheme.dark().colorScheme.secondary,
            unselectedItemColor: const Color.fromARGB(255, 247, 248, 252),
            elevation: 10,
            currentIndex: provider.bottomBarIndex,
            showSelectedLabels: false,
            onTap: (index) {
              provider.changeIndex(index);
              context.push(btm.bottomBarRoutes[index]);
            },
            iconSize: 30,
            // backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                  label: 'Home',
                  icon: provider.bottomBarIndex == 0
                      ? btm.bottomBarActive[0]
                      : btm.bottomBarInActive[0]),
              BottomNavigationBarItem(
                  backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                  label: 'Notes',
                  icon: provider.bottomBarIndex == 1
                      ? btm.bottomBarActive[1]
                      : btm.bottomBarInActive[1]),
              BottomNavigationBarItem(
                  backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                  label: 'Hackathons',
                  icon: provider.bottomBarIndex == 2
                      ? btm.bottomBarActive[2]
                      : btm.bottomBarInActive[2]),
              BottomNavigationBarItem(
                  backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                  label: 'Saved',
                  icon: provider.bottomBarIndex == 3
                      ? btm.bottomBarActive[3]
                      : btm.bottomBarInActive[3]),
              BottomNavigationBarItem(
                backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                label: 'Profile',
                icon: provider.bottomBarIndex == 4
                    ? btm.bottomBarActive[4]
                    : btm.bottomBarInActive[4],
              ),
            ]);
      },
    );
  }
}
