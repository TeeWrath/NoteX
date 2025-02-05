import "package:flutter/material.dart";
import "package:flutter_platform_widgets/flutter_platform_widgets.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class AuthButton extends StatelessWidget {
  const AuthButton({required this.child, required this.onPressed, super.key});
  final Widget child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return PlatformElevatedButton(
      onPressed: onPressed,
      // color: Colors.red,
      material: (BuildContext context, PlatformTarget platform) =>
          MaterialElevatedButtonData(
        style: ElevatedButton.styleFrom(
          // foregroundColor: Colors.black,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.r),
          ),
          fixedSize: Size(600.w, 30.h),
        ),
      ),
      cupertino: (BuildContext context, PlatformTarget platform) =>
          CupertinoElevatedButtonData(
        minSize: 30,
        borderRadius: BorderRadius.circular(80.r),
      ),
      child: child,
    );
  }
}
