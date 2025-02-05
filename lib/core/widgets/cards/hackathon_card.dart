import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../theme/app_theme.dart";

class HackathonCard extends StatelessWidget {
  const HackathonCard({
    super.key,
    this.padding,
    this.height,
    this.width,
    this.name,
    this.date,
    this.mode,
    this.location,
  });
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  final String? name;
  final String? date;
  final String? mode;
  final String? location;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(120.r),
          topRight: Radius.circular(40.r),
          bottomLeft: Radius.circular(40.r),
          bottomRight: Radius.circular(40.r),
        ),
        color: AppTheme.dark().primaryColor,
      ),
      padding: padding,
      height: height,
      width: width,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            "assets/noteimg.png",
            height: 70.h,
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                name ?? "Status Code 0",
                style: AppTheme.dark()
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppTheme.dark().colorScheme.secondary),
              ),
              Text(
                date ?? "12 Aug 2024",
                style: AppTheme.dark()
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                mode ?? "In-Person Only",
                style: AppTheme.dark()
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                location ?? "Kolkata, India",
                style: AppTheme.dark()
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
    );
  }
}
