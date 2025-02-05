import "package:flutter/material.dart";
import "package:flutter_platform_widgets/flutter_platform_widgets.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";

import "../../core/routes/app_route_const.dart";
import "../../core/theme/app_theme.dart";
import "../../core/theme/colors.dart";
import "../../core/widgets/buttons/auth_button.dart";
import "../../core/widgets/buttons/dropdownbutton.dart";
import "../../core/widgets/text_fields/common_text_form_field.dart";
import "../../providers/auth_provider.dart";

class EnterDetails extends StatelessWidget {
  const EnterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (BuildContext context, AuthProvider provider, Widget? child) =>
          Scaffold(
        backgroundColor: AppTheme.dark().colorScheme.secondary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/logo.png",
                width: 200.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PlatformText(
                    "Name",
                    textAlign: TextAlign.start,
                    style: AppTheme.dark().textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 2.h,
              // ),
              CommonTextFormField(
                width: 660.w,
                height: 25.h,
                boxDecPadding: EdgeInsets.fromLTRB(50.w, 0, 0, 0),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                controller: provider.nameEditingController,
                style: AppTheme.dark()
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white),
                hintText: "Enter your name",
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PlatformText(
                    "Branch",
                    textAlign: TextAlign.start,
                    style: AppTheme.dark().textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 2.h,
              // ),
              DropDownbutton(
                isExpanded: true,
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppTheme.dark().colorScheme.secondary,
                ),
                menuWidth: 650.w,
                margin: EdgeInsets.fromLTRB(90.w, 0, 90.w, 0),
                padding: EdgeInsets.fromLTRB(50.w, 1.h, 10.w, 1.h),
                hintWidget: Text(
                  "Choose your branch",
                  style: AppTheme.dark()
                      .textTheme
                      .titleSmall!
                      .copyWith(color: dropDownMenuText),
                ),
                style: AppTheme.dark()
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
                items: <DropdownMenuItem<Object>>[
                  DropdownMenuItem<Object>(
                    value: "cse",
                    child: Text(
                      "Computer Science",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "ece",
                    child: Text(
                      "Electronics and Communications",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PlatformText(
                    "Semester",
                    textAlign: TextAlign.start,
                    style: AppTheme.dark().textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 0.h,
              // ),
              DropDownbutton(
                isExpanded: true,
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppTheme.dark().colorScheme.secondary,
                ),
                menuWidth: 650.w,
                margin: EdgeInsets.fromLTRB(90.w, 0, 90.w, 0),
                padding: EdgeInsets.fromLTRB(50.w, 1.h, 10.w, 1.h),
                hintWidget: Text(
                  "Choose your semester",
                  style: AppTheme.dark()
                      .textTheme
                      .titleSmall!
                      .copyWith(color: dropDownMenuText),
                ),
                style: AppTheme.dark()
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
                items: <DropdownMenuItem<Object>>[
                  DropdownMenuItem<Object>(
                    value: "1",
                    child: Text(
                      "First Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "2",
                    child: Text(
                      "First Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "3",
                    child: Text(
                      "Third Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "4",
                    child: Text(
                      "Fourth Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "5",
                    child: Text(
                      "Fifth Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "6",
                    child: Text(
                      "Sixth Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "7",
                    child: Text(
                      "Seventh Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                  DropdownMenuItem<Object>(
                    value: "8",
                    child: Text(
                      "Eighth Semester",
                      style: AppTheme.dark()
                          .textTheme
                          .titleSmall!
                          .copyWith(color: dropDownMenuText),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              AuthButton(
                child: Text(
                  "Take the leap!",
                  style: AppTheme.dark()
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
                onPressed: () {
                  context.go(Routes.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
