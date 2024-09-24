// import 'dart:io';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.child, required this.onPressed});
  final Widget child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // if (Platform.isAndroid) {
    //   return MaterialButton(
    //     onPressed: onPressed,
    //     color: Colors.black,
    //     height: 30.h,
    //     minWidth: 500.w,
    //     shape:
    //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.r)),
    //     child: child,
    //   );
    // } else {
    //   return CupertinoButton(
    //       onPressed: onPressed,
    //       color: Colors.black,
    //       minSize: 30,
    //       borderRadius: BorderRadius.circular(80.r),
    //       child: child);
    // }
    return PlatformElevatedButton(
      onPressed: onPressed,
      color: Colors.black,
      material: (context, platform) => MaterialElevatedButtonData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.r)),
              fixedSize: Size(600.w, 30.h))),
      cupertino: (context, platform) => CupertinoElevatedButtonData(
          minSize: 30, borderRadius: BorderRadius.circular(80.r)),
      child: child,
    );
  }
}
