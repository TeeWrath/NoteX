import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../theme/app_theme.dart";
import "../../theme/colors.dart";

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    required this.hintText,
    required this.suffixWidget,
    super.key,
  });
  final Widget suffixWidget;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.dark().primaryColor,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: AppTheme.dark()
            .textTheme
            .titleSmall!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w200),
        decoration: InputDecoration(
          // fillColor: Colors.white,
          suffixIcon: IconButton(onPressed: () {}, icon: suffixWidget),
          contentPadding: EdgeInsets.symmetric(horizontal: 40.w),
          border: InputBorder.none,
          labelStyle: AppTheme.dark()
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.white),
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
