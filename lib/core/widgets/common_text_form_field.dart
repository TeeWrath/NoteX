import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';

class CommonTextFormField extends StatelessWidget {
  const CommonTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.obscureText,
      this.onChanged,
      this.style,
      this.suffixIcon,
      this.width,
      this.height});
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Function(String)? onChanged;
  final TextStyle? style;
  final Widget? suffixIcon;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: AppTheme.dark().primaryColor,
          borderRadius: BorderRadius.circular(80.r)),
      child: PlatformTextFormField(
          controller: controller,
          autocorrect: true,
          hintText: hintText,
          // textAlign: TextAlign.start,
          material: (context, platform) => MaterialTextFormFieldData(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: AppTheme.dark().primaryColor,
                    suffixIcon: suffixIcon,
                    hintStyle: AppTheme.dark().textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 152, 152, 152))),
                keyboardType: keyboardType,
                obscureText: obscureText,
                onChanged: onChanged,
                style: style,
              )),
    );
  }
}
