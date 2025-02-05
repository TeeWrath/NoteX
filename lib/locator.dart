import "package:get_it/get_it.dart";

import "providers/auth_provider.dart";
import "providers/bottom_bar_provider.dart";

final GetIt locator = GetIt.instance;

Future<void> init() async {
  locator.registerLazySingleton(() => BottomBarProvider());
  locator.registerLazySingleton(
    () => AuthProvider(),
  );
}
