import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/routes/app_route_config.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(844, 390),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark(),
        routerConfig: AppRouteConfig.returnRouter(),
      ),
    );
  }
}
