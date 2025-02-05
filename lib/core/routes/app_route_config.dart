import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../screens/auth_screens/enter_details.dart";
import "../../screens/auth_screens/splash.dart";
import "../../screens/hackathons/hackathons.dart";
import "../../screens/home/home.dart";
import "../../screens/notes/explore_notes.dart";
import "../../screens/profile/update_details.dart";
import "../../screens/profile/user_profile.dart";
import "app_route_const.dart";

class AppRouteConfig {
  static GoRouter returnRouter() {
    GoRouter routes = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          name: RouteName.splashScreen,
          path: Routes.splashScreen,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<Splash>(child: Splash());
          },
        ),
        GoRoute(
          name: RouteName.enterDetails,
          path: Routes.enterDetails,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<EnterDetails>(child: EnterDetails());
          },
        ),
        GoRoute(
          name: RouteName.homeScreen,
          path: Routes.homeScreen,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<HomeScreen>(child: HomeScreen());
          },
        ),
        GoRoute(
          name: RouteName.hackathons,
          path: Routes.hackathons,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<HackathonsScreen>(
              child: HackathonsScreen(),
            );
          },
        ),
        GoRoute(
          name: RouteName.exploreNotes,
          path: Routes.exploreNotes,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<ExploreNotes>(child: ExploreNotes());
          },
        ),
        GoRoute(
          name: RouteName.userProfile,
          path: Routes.userProfile,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<UserProfile>(child: UserProfile());
          },
        ),
        GoRoute(
          name: RouteName.updateDetails,
          path: Routes.updateDetails,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return const MaterialPage<UpdateDetails>(child: UpdateDetails());
          },
        ),
      ],
    );
    return routes;
  }
}
