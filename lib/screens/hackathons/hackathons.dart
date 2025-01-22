import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/common_scaffold.dart';

class HackathonsScreen extends StatelessWidget {
  const HackathonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      enableAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 75.w),
              child: Text(
                'Explore Hackathons',
                style: AppTheme.dark()
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppTheme.dark().colorScheme.secondary),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
