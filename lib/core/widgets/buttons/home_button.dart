import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    this.onPressed,
    this.child = const Text('Something'),
    this.padding,
    this.alignment,
    this.widgetKey,
    this.iconData,
    this.iconColor,
  });

  final Function()? onPressed;
  final Widget child;
  final EdgeInsets? padding;
  final AlignmentGeometry? alignment;
  final Key? widgetKey;
  final IconData? iconData;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(700.w, 42.h),
        // enabledMouseCursor: MouseCursor.defer,
        alignment: alignment,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.r),
            topLeft: Radius.circular(120.r),
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
        ),
        textStyle: AppTheme.dark()
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.w200, color: Colors.white),
        backgroundColor: AppTheme.dark().primaryColor,
        padding: padding,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          child,
          if (iconData != null)
            Icon(
              iconData,
              color: iconColor ?? AppTheme.dark().colorScheme.secondary,
            ),
        ],
      ),
    );
  }
}
