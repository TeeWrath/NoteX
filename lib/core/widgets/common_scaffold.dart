import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/bottom_nav_bar.dart';
import 'package:notex/core/widgets/search_text_field.dart';
import 'package:provider/provider.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold(
      {super.key,
      required this.enableAppBar,
      this.suffixIcon = Icons.search_outlined});
  final bool enableAppBar;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
          appBar: enableAppBar
              ? AppBar(
                  backgroundColor: AppTheme.dark().scaffoldBackgroundColor,
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: AppTheme.dark().colorScheme.secondary,
                      )),
                  title: SearchTextField(
                    suffixWidget: Icon(
                      enableAppBar ? suffixIcon : null,
                      color: AppTheme.dark().colorScheme.secondary,
                    ),
                    hintText: 'Search your hackathons',
                  ),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        maxRadius: 50.r,
                        foregroundImage: const AssetImage('assets/catpfp.png'),
                      ),
                    )
                  ],
                )
              : null,
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
