import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/theme/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key,required this.hintText ,required this.suffixWidget});
  final Widget suffixWidget;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.dark().primaryColor,
          borderRadius: BorderRadius.circular(50.r)),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {},
              icon: suffixWidget),
          contentPadding: EdgeInsets.symmetric(horizontal: 40.w),
          border: InputBorder.none,
          hintStyle: AppTheme.dark()
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w300, color: hintTextColorDark),
          hintText: hintText,
          // fillColor: AppTheme.dark().primaryColor
        ),
      ),
    );
  }
}
