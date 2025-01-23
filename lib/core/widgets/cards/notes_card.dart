import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(120.r),
              topRight: Radius.circular(40.r),
              bottomLeft: Radius.circular(40.r),
              bottomRight: Radius.circular(40.r)),
          color: AppTheme.dark().primaryColor),
    );
  }
}