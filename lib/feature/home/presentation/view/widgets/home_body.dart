import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/team_a.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/team_b.dart';
import 'package:flutter/material.dart';

import 'custom_vertical_divider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.07.w),
      child: const Row(
        children: [
          TeamA(),
          CustomVerticalDivider(),
          TeamB(),
        ],
      ),
    );
  }
}
