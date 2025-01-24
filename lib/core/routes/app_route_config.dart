import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notex/core/routes/app_route_const.dart';
import 'package:notex/screens/auth_screens/enter_details.dart';
import 'package:notex/screens/auth_screens/splash.dart';
import 'package:notex/screens/hackathons/hackathons.dart';
import 'package:notex/screens/home/home.dart';
import 'package:notex/screens/notes/explore_notes.dart';
import 'package:notex/screens/profile/user_profile.dart';

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
        name: RouteName.enterDetails,
        path: Routes.enterDetails,
        pageBuilder: (context, state) {
          return const MaterialPage(child: EnterDetails());
        },
      ),
      GoRoute(
        name: RouteName.homeScreen,
        path: Routes.homeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
      GoRoute(
        name: RouteName.hackathons,
        path: Routes.hackathons,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HackathonsScreen());
        },
      ),
      GoRoute(
        name: RouteName.exploreNotes,
        path: Routes.exploreNotes,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ExploreNotes());
        },
      ),
      GoRoute(
        name: RouteName.userProfile,
        path: Routes.userProfile,
        pageBuilder: (context, state) {
          return const MaterialPage(child: UserProfile());
        },
      ),
    ]);
    return routes;
  }
}
