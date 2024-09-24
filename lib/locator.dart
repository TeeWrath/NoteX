import 'package:get_it/get_it.dart';
import 'package:notex/providers/auth_provider.dart';
import 'package:notex/providers/bottom_bar_provider.dart';

final locator = GetIt.instance;

Future<void> init() async {
  locator.registerLazySingleton(() => BottomBarProvider());
  locator.registerLazySingleton(() => AuthProvider(),);
}
