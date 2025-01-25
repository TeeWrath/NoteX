import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';

class IconsButton extends StatelessWidget {
  const IconsButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.iconSize,
    this.alignment,
    this.padding,
    this.fixedSize,
    this.shape,
    this.backgroundColor,
  });

  final Function() onPressed;
  final String label;
  final Widget? icon;
  final double? iconSize; // Property for dynamic icon size
  final AlignmentGeometry? alignment;
  final EdgeInsets? padding;
  final Size? fixedSize;
  final OutlinedBorder? shape;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        alignment: alignment,
        fixedSize: fixedSize ?? Size(420.w, 25.h),
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.r),
            ),
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 4.h, // Adjust padding for smaller height
            ),
        backgroundColor:
            backgroundColor ?? AppTheme.dark().colorScheme.secondary,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (icon != null)
            SizedBox(
              height: iconSize ?? 25.h, // Icon size proportional to button height
              width: iconSize ?? 25.h, // Ensure square aspect ratio
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: icon,
                ),
              ),
            ),
          //  const Spacer(),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: AppTheme.dark()
                    .textTheme
                    .bodyLarge!
                    .copyWith(
                      fontSize: 15.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
