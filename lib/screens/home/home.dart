import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/common_scaffold.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, provider, child) {
        return CommonScaffold(
            enableAppBar: false,
            body: Container(
              height: 0.35.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                  color: AppTheme.dark().colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(250.r))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(height: 10.h,),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset('assets/catpfp.png')),
                    SizedBox(
                      height: 25.h,
                    ),
                    PlatformText(
                      'Hi NoobMaster69, nice to see you!',
                      style: AppTheme.dark()
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.black),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
