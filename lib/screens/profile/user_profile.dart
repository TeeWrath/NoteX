import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";

import "../../core/routes/app_route_const.dart";
import "../../core/theme/app_theme.dart";
import "../../core/widgets/bordered_img.dart";
import "../../core/widgets/buttons/icons_button.dart";
import "../../core/widgets/common_scaffold.dart";

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      enableAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 0.45.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                color: AppTheme.dark().colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(250.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(height: 10.h,),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "NoobMaster69",
                      style: AppTheme.dark().textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Branch - Electronics and Communication Engineering",
                      textAlign: TextAlign.center,
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "Semester - III",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -35.h),
              child: BorderedImg(
                height: 75.h,
                width: 350.w,
                strokeWidth: 15,
                color: AppTheme.dark().scaffoldBackgroundColor,
                image: "assets/catpfp.png",
              ),
            ),
            IconsButton(
              onPressed: () async {
                await context.push(Routes.updateDetails);
              },
              icon: Image.asset("assets/edit_button.png"),
              label: "Update Details",
            ),
            SizedBox(
              height: 10.h,
            ),
            IconsButton(
              onPressed: () {},
              icon: Image.asset("assets/logout_button.png"),
              label: "Log Out",
            ),
          ],
        ),
      ),
    );
  }
}
