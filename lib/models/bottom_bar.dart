import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../core/routes/app_route_const.dart";
import "../core/theme/app_theme.dart";

class BottomBar {
  final List<Widget> bottomBarInActive = <Widget>[
    Image.asset(
      "assets/icons/icon _home_white.png",
    ),
    Image.asset("assets/icons/icon _notes_white.png"),
    Image.asset("assets/icons/icon _lightbulb_white.png"),
    Image.asset("assets/icons/icon _Saved_white.png"),
    CircleAvatar(
      maxRadius: 40.r,
      foregroundImage: const AssetImage("assets/catpfp.png"),
    ),
  ];

  final List<Widget> bottomBarActive = <Widget>[
    Image.asset("assets/icons/icon _home_yellow.png"),
    Image.asset("assets/icons/icon _notes_yellow.png"),
    Image.asset("assets/icons/icon _lightbulb_yellow.png"),
    Image.asset("assets/icons/icon _Saved_yellow.png"),
    CircleAvatar(
      backgroundColor: AppTheme.dark().colorScheme.secondary,
      child: Image.asset("assets/catpfp.png"),
    ),
  ];

  final List<String> bottomBarRoutes = <String>[
    Routes.homeScreen,
    Routes.exploreNotes,
    Routes.hackathons,
    Routes.homeScreen,
    Routes.userProfile,
  ];
}
