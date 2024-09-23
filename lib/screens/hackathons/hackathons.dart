import 'package:flutter/material.dart';
import 'package:notex/core/widgets/common_scaffold.dart';

class HackathonsScreen extends StatelessWidget {
  const HackathonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      enableAppBar: true,
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
