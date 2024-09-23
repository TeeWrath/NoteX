import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notex/core/routes/app_route_const.dart';
import 'package:notex/screens/auth_screens/splash.dart';
import 'package:notex/screens/hackathons/hackathons.dart';

class AppRouteConfig {
  static GoRouter returnRouter() {
    GoRouter routes = GoRouter(routes: [
      GoRoute(
        name: RouteName.splashScreen,
        path: Routes.splashScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: Splash());
        },
      ),
      GoRoute(
        name: RouteName.hackathons,
        path: Routes.hackathons,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HackathonsScreen());
        },
      )
    ]);
    return routes;
  }
}
