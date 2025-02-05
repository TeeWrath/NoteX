import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../core/theme/app_theme.dart";
import "../../core/widgets/cards/notes_card.dart";
import "../../core/widgets/common_scaffold.dart";

class ExploreNotes extends StatelessWidget {
  const ExploreNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      enableAppBar: true,
      suffixIcon: Icons.keyboard_arrow_down_rounded,
      searchHintText: "Search your notes",
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Explore Notes",
                style: AppTheme.dark()
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppTheme.dark().colorScheme.secondary),
              ),
              SizedBox(
                height: 15.h,
              ),
              const NotesCard(isActive: true),
            ],
          ),
        ),
      ),
    );
  }
}
