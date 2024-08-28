import 'package:get_it/get_it.dart';
import 'package:notex/providers/bottom_bar_provider.dart';
import 'package:provider/provider.dart';

final locator = GetIt.instance;

Future<void> init() async {
  locator.registerLazySingleton(()=> BottomBarProvider());
}
