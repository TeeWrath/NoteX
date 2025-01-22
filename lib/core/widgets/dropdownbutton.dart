import 'package:flutter/material.dart';
import 'package:notex/core/theme/app_theme.dart';

class DropDownbutton extends StatelessWidget {
  const DropDownbutton({
    super.key,
    this.hintWidget,
    this.style,
    this.isExpanded = false,
    this.padding,
  });

  final Widget? hintWidget;
  final TextStyle? style;
  final bool isExpanded;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppTheme.dark().colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: hintWidget 
            // Text(
            //   "Choose your branch",
            //   style: style ?? 
            //     const TextStyle(color: Colors.white),
            // ),
            ,
          isExpanded: isExpanded,
          focusColor: AppTheme.dark().primaryColor,
          style: style ??
              TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
          items: const [
            DropdownMenuItem(
              value: "branch1",
              child: Text("Branch 1"),
            ),
            DropdownMenuItem(
              value: "branch2",
              child: Text("Branch 2"),
            ),
          ],
          dropdownColor: AppTheme.dark().primaryColor,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppTheme.dark().colorScheme.secondary,
          ),
          onChanged: (value) {
            // Handle value change
          },
        ),
      ),
    );
  }
}
