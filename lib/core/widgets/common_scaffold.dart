import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";

import "../../providers/bottom_bar_provider.dart";
import "../routes/app_route_const.dart";
import "../theme/app_theme.dart";
import "bottom_nav_bar.dart";
import "text_fields/search_text_field.dart";

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.enableAppBar,
    required this.body,
    super.key,
    this.suffixIcon = Icons.search_outlined,
    this.searchHintText,
  });
  final bool enableAppBar;
  final Widget body;
  final IconData suffixIcon;
  final String? searchHintText;

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBarProvider>(
      builder:
          (BuildContext context, BottomBarProvider provider, Widget? child) {
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
                    ),
                  ),
                  title: SearchTextField(
                    suffixWidget: Icon(
                      enableAppBar ? suffixIcon : null,
                      color: AppTheme.dark().colorScheme.secondary,
                    ),
                    hintText: searchHintText ?? "Search your hackathons",
                  ),
                  centerTitle: true,
                  actions: <Widget>[
                    IconButton(
                      onPressed: () async {
                        await context.push(Routes.userProfile);
                        provider.changeIndex(4);
                      },
                      icon: CircleAvatar(
                        maxRadius: 50.r,
                        foregroundImage: const AssetImage("assets/catpfp.png"),
                      ),
                    ),
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
