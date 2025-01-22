import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/theme/colors.dart';

class DropDownbutton extends StatelessWidget {
  const DropDownbutton(
      {super.key,
      this.hintWidget,
      this.style,
      this.isExpanded = false,
      this.padding,
      this.margin,
      this.menuWidth,
      this.icon,
      this.items});

  final Widget? hintWidget;
  final TextStyle? style;
  final bool isExpanded;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? menuWidth;
  final Widget? icon;
  final List<DropdownMenuItem<Object>>? items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppTheme.dark().colorScheme.primary,
        borderRadius: BorderRadius.circular(90.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: hintWidget,
          isExpanded: isExpanded,
          focusColor: AppTheme.dark().primaryColor,
          style: style ??
              const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
          items: items,
          dropdownColor: AppTheme.dark().primaryColor,
          borderRadius: BorderRadius.circular(90.r),
          // alignment: Alignment.center,
          menuWidth: menuWidth,
          icon: icon,
          onChanged: (value) {
            // Handle value change
          },
        ),
      ),
    );
  }
}
