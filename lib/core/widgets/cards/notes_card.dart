import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../theme/app_theme.dart";

class NotesCard extends StatelessWidget {
  const NotesCard({
    required this.isActive,
    super.key,
    this.padding,
    this.margin,
    this.alignment,
    this.subjectName,
    this.authorName,
    this.semester,
    this.upVotes,
  });

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final AlignmentGeometry? alignment;
  final bool isActive;
  final String? subjectName;
  final String? authorName;
  final String? semester;
  final String? upVotes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(175.r),
          topRight: Radius.circular(50.r),
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
        color: isActive
            ? AppTheme.dark().colorScheme.secondary
            : AppTheme.dark().primaryColor,
      ),
      height: isActive ? 75.h : 50.h,
      width: 0.86.sw,
      padding: padding ?? EdgeInsets.fromLTRB(50.w, 6.h, 50.w, 6.h),
      margin: margin,
      alignment: alignment,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 20.w),
          isActive
              ? Image.asset("assets/notesimg.png")
              : IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: AppTheme.dark().colorScheme.secondary,
                    size: 30,
                  ),
                ),
          const Spacer(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Flexible(
                  child: Text(
                    subjectName ?? "Semiconductor Devices",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.right,
                    style: isActive
                        ? AppTheme.dark().textTheme.titleSmall!.copyWith()
                        : AppTheme.dark().textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                  ),
                ),
                Text(
                  authorName ?? "Lewis Strauss",
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: isActive
                      ? AppTheme.dark()
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w400)
                      : AppTheme.dark().textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                ),
                if (isActive) ...<Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.heart,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    semester != null ? "Semester $semester" : "Semester III",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.dark()
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    upVotes != null ? "$upVotes Upvotes" : "X Upvotes",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.dark()
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
