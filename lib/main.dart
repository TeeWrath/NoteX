import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/routes/app_route_config.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/locator.dart';
import 'package:notex/providers/auth_provider.dart';
import 'package:notex/providers/bottom_bar_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => locator<BottomBarProvider>()),
      ChangeNotifierProvider(
        create: (_) => locator<AuthProvider>(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(844, 390),
      minTextAdapt: true,
      child: PlatformProvider(
          settings:
              PlatformSettingsData(matchMaterialCaseForPlatformText: true),
          builder: (context) => PlatformTheme(
                materialDarkTheme: AppTheme.dark(),
                cupertinoDarkTheme: AppTheme.cupDark(),
                builder: (context) => PlatformApp.router(
                  localizationsDelegates: const <LocalizationsDelegate<
                      dynamic>>[
                    DefaultMaterialLocalizations.delegate,
                    DefaultCupertinoLocalizations.delegate,
                    DefaultWidgetsLocalizations.delegate
                  ],
                  debugShowCheckedModeBanner: false,
                  routerConfig: AppRouteConfig.returnRouter(),
                ),
              )),
    );
  }
}
