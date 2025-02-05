import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";

import "../../models/bottom_bar.dart";
import "../../providers/bottom_bar_provider.dart";
import "../theme/app_theme.dart";

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  BottomBar btm = BottomBar();

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBarProvider>(
      builder:
          (BuildContext context, BottomBarProvider provider, Widget? child) {
        return BottomNavigationBar(
          // fixedColor: AppTheme.dark().scaffoldBackgroundColor,
          selectedItemColor: AppTheme.dark().colorScheme.secondary,
          unselectedItemColor: const Color.fromARGB(255, 247, 248, 252),
          elevation: 10,
          currentIndex: provider.bottomBarIndex,
          showSelectedLabels: false,
          onTap: (int index) async {
            provider.changeIndex(index);
            await context.push(btm.bottomBarRoutes[index]);
          },
          iconSize: 30,
          // backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
              label: "Home",
              icon: provider.bottomBarIndex == 0
                  ? btm.bottomBarActive[0]
                  : btm.bottomBarInActive[0],
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
              label: "Notes",
              icon: provider.bottomBarIndex == 1
                  ? btm.bottomBarActive[1]
                  : btm.bottomBarInActive[1],
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
              label: "Hackathons",
              icon: provider.bottomBarIndex == 2
                  ? btm.bottomBarActive[2]
                  : btm.bottomBarInActive[2],
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
              label: "Saved",
              icon: provider.bottomBarIndex == 3
                  ? btm.bottomBarActive[3]
                  : btm.bottomBarInActive[3],
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
              label: "Profile",
              icon: provider.bottomBarIndex == 4
                  ? btm.bottomBarActive[4]
                  : btm.bottomBarInActive[4],
            ),
          ],
        );
      },
    );
  }
}
