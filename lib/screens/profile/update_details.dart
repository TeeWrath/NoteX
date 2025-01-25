import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/theme/colors.dart';
import 'package:notex/core/widgets/bordered_img.dart';
import 'package:notex/core/widgets/buttons/dropdownbutton.dart';
import 'package:notex/core/widgets/common_scaffold.dart';
import 'package:notex/core/widgets/text_fields/common_text_form_field.dart';
import 'package:notex/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class UpdateDetails extends StatelessWidget {
  const UpdateDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, provider, child) {
        return CommonScaffold(
            enableAppBar: false,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Update Details',
                      style: AppTheme.dark().textTheme.titleLarge!.copyWith(
                          color: AppTheme.dark().colorScheme.secondary),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    BorderedImg(
                        color: AppTheme.dark().colorScheme.secondary,
                        strokeWidth: 3,
                        height: 60.h,
                        width: 60.h,
                        image: 'assets/catpfp.png'),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name',
                          textAlign: TextAlign.start,
                          style: AppTheme.dark()
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.dark().colorScheme.secondary),
                        ),
                      ),
                    ),
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
                      hintText: 'Enter your name',
                      hintStyle: AppTheme.dark().textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w500, color: dropDownMenuText),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Branch',
                          textAlign: TextAlign.start,
                          style: AppTheme.dark()
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.dark().colorScheme.secondary),
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
                        'Choose your branch',
                        style: AppTheme.dark()
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: dropDownMenuText),
                      ),
                      style: AppTheme.dark()
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                      items: [
                        DropdownMenuItem(
                          value: "cse",
                          child: Text(
                            "Computer Science",
                            style: AppTheme.dark()
                                .textTheme
                                .titleSmall!
                                .copyWith(color: dropDownMenuText),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "ece",
                          child: Text("Electronics and Communications",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Semester',
                          textAlign: TextAlign.start,
                          style: AppTheme.dark()
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.dark().colorScheme.secondary),
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
                        'Choose your semester',
                        style: AppTheme.dark()
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: dropDownMenuText),
                      ),
                      style: AppTheme.dark()
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white),
                      items: [
                        DropdownMenuItem(
                          value: "1",
                          child: Text(
                            "First Semester",
                            style: AppTheme.dark()
                                .textTheme
                                .titleSmall!
                                .copyWith(color: dropDownMenuText),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "2",
                          child: Text("First Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                        DropdownMenuItem(
                          value: "3",
                          child: Text("Third Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                        DropdownMenuItem(
                          value: "4",
                          child: Text("Fourth Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                        DropdownMenuItem(
                          value: "5",
                          child: Text("Fifth Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                        DropdownMenuItem(
                          value: "6",
                          child: Text("Sixth Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                        DropdownMenuItem(
                          value: "7",
                          child: Text("Seventh Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                        DropdownMenuItem(
                          value: "8",
                          child: Text("Eighth Semester",
                              style: AppTheme.dark()
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: dropDownMenuText)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(400.w, 16.h),
                            backgroundColor:
                                AppTheme.dark().colorScheme.secondary),
                        child: Text(
                          'Update Details',
                          style: AppTheme.dark()
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.black,fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
            ));
      },
    );
  }
}
