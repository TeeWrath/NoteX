import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/common_text_form_field.dart';
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
              PlatformText(
                'Name',
                textAlign: TextAlign.left,
                style: AppTheme.dark()
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
              ),
              CommonTextFormField(
                  width: 700.w,
                  height: 30.h,
                  controller: provider.nameEditingController,
                  style: AppTheme.dark().textTheme.titleSmall!.copyWith(),
                  hintText: 'Enter your name')
            ],
          ),
        ),
      ),
    );
  }
}
