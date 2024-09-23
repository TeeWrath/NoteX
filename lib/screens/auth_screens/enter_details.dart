import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';

class EnterDetails extends StatelessWidget {
  const EnterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark().colorScheme.secondary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 300.w,
          ),
          Text(
            'Name',
            textAlign: TextAlign.left,
            style: AppTheme.dark()
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
