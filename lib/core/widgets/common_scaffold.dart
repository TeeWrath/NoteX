import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:notex/core/theme/app_theme.dart';
import 'package:notex/core/widgets/bottom_nav_bar.dart';
import 'package:notex/core/widgets/text_fields/search_text_field.dart';
import 'package:provider/provider.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold(
      {super.key,
      required this.enableAppBar,
      required this.body,
      this.suffixIcon = Icons.search_outlined,
      this.searchHintText});
  final bool enableAppBar;
  final Widget body;
  final IconData suffixIcon;
  final String? searchHintText;

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
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: AppTheme.dark().colorScheme.secondary,
                      )),
                  title: SearchTextField(
                    suffixWidget: Icon(
                      enableAppBar ? suffixIcon : null,
                      color: AppTheme.dark().colorScheme.secondary,
                    ),
                    hintText: searchHintText ?? 'Search your hackathons',
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
          body: body,
        );
      },
    );
  }
}
