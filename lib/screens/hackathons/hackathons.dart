import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../core/theme/app_theme.dart";
import "../../core/widgets/cards/hackathon_card.dart";
import "../../core/widgets/common_scaffold.dart";

class HackathonsScreen extends StatelessWidget {
  const HackathonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      enableAppBar: true,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Explore Hackathons",
                style: AppTheme.dark()
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppTheme.dark().colorScheme.secondary),
              ),
              SizedBox(
                height: 15.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
              HackathonCard(
                height: 70.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 5.h),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
