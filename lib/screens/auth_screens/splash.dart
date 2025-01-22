import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:notex/core/routes/app_route_const.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/auth_button.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark().colorScheme.secondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 300.w,
            ),
            PlatformText(
              'Notex',
              style: AppTheme.dark().textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 130.sp,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10.h,
            ),
            PlatformText(
              'Share notes, connect with people, crack university examinations',
              textAlign: TextAlign.center,
              style: AppTheme.dark()
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6.h,
            ),
            AuthButton(
                onPressed: () {
                  context.go(Routes.enterDetails);
                },
                child: Text(
                  'Shall We?',
                  style: AppTheme.dark()
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
