import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/score.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'name_team.dart';

class TeamB extends StatelessWidget {
  const TeamB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        0.06.ph,
        const NameTeam(
          nameTeam: 'Team B',
        ),
        const Score(
          score: 0,
        ),
        CustomIncrementButton(
          point: 1,
          onPressed: () {},
        ),
        0.015.ph,
        CustomIncrementButton(
          point: 2,
          onPressed: () {},
        ),
        0.015.ph,
        CustomIncrementButton(
          point: 3,
          onPressed: () {},
        ),
      ],
    );
  }
}
