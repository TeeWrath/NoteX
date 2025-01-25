import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/theme/colors.dart';

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
      this.height,
      this.textAlign,
      this.textAlignVertical = TextAlignVertical.center,
      this.boxDecPadding,
      this.hintStyle});
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Function(String)? onChanged;
  final TextStyle? style;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final TextAlign? textAlign;
  final TextAlignVertical textAlignVertical;
  final EdgeInsets? boxDecPadding;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: AppTheme.dark().primaryColor,
          borderRadius: BorderRadius.circular(80.r)),
      padding: boxDecPadding,
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
                    hintStyle: hintStyle ?? AppTheme.dark().textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500, color: dropDownMenuText)),
                keyboardType: keyboardType,
                obscureText: obscureText,
                onChanged: onChanged,
                style: style,
                textAlignVertical: textAlignVertical,
                textAlign: textAlign,
              )),
    );
  }
}
