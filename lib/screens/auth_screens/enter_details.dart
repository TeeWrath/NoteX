import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/common_text_form_field.dart';
import 'package:notex/core/widgets/dropdownbutton.dart';
import 'package:notex/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class EnterDetails extends StatelessWidget {
  const EnterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) => Scaffold(
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
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 75.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PlatformText(
                    'Name',
                    textAlign: TextAlign.start,
                    style: AppTheme.dark().textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CommonTextFormField(
                  width: 700.w,
                  height: 30.h,
                  boxDecPadding: EdgeInsets.fromLTRB(50.w, 2.h, 0, 0),
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  controller: provider.nameEditingController,
                  style: AppTheme.dark()
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white),
                  hintText: 'Enter your name'),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 75.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PlatformText(
                    'Branch',
                    textAlign: TextAlign.start,
                    style: AppTheme.dark().textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              DropDownbutton(
                isExpanded: true,
                padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
                hintWidget: Text(
                  'Choose your branch',
                  style: AppTheme.dark().textTheme.titleSmall!.copyWith(
                      color: const Color.fromARGB(255, 152, 152, 152)),
                ),
                style: AppTheme.dark()
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
