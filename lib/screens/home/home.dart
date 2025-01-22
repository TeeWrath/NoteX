import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:notex/core/routes/app_route_const.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/buttons/home_button.dart';
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 0.35.sh,
                    width: 1.sw,
                    decoration: BoxDecoration(
                        color: AppTheme.dark().colorScheme.secondary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.r),
                            bottomRight: Radius.circular(250.r))),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60.w, vertical: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(height: 10.h,),
                          GestureDetector(
                            onTap: (){},
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Image.asset('assets/catpfp.png')),
                          ),
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
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  HomeButton(
                    iconData: Icons.arrow_forward,
                    padding: EdgeInsets.fromLTRB(100.w, 15.h, 100.w, 15.h),
                    onPressed: () {},
                    child: Text(
                      'Notes',
                      style: AppTheme.dark().textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  HomeButton(
                    iconData: Icons.arrow_forward,
                    padding: EdgeInsets.fromLTRB(100.w, 15.h, 100.w, 15.h),
                    onPressed: () {},
                    child: Text(
                      'PYQs',
                      style: AppTheme.dark().textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  HomeButton(
                    iconData: Icons.arrow_forward,
                    padding: EdgeInsets.fromLTRB(100.w, 15.h, 100.w, 15.h),
                    onPressed: () {
                      context.push(Routes.hackathons);
                    },
                    child: Text(
                      'Hackathons',
                      style: AppTheme.dark().textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ));
      },
    );
  }
}
