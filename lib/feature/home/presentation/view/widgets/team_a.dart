import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/score.dart';
import 'package:basketsballprovider/feature/home/presentation/view_mdoel/provider_team_a.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_button.dart';
import 'name_team.dart';

class TeamA extends StatelessWidget {
  const TeamA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        0.06.ph,
        const NameTeam(
          nameTeam: 'Team A',
        ),
        Selector<ProviderTeamA, int>(
          builder: (BuildContext context, score, Widget? child) {
            return Score(
              score: score,
            );
          },
          selector: (BuildContext context, providerTeamA) =>
              providerTeamA.scoreA,
        ),
        CustomIncrementButton(
          point: 1,
          onPressed: () {
            context.read<ProviderTeamA>().incrementScoreA(valueIncrement: 1);
          },
        ),
        0.015.ph,
        CustomIncrementButton(
          point: 2,
          onPressed: () {
            context.read<ProviderTeamA>().incrementScoreA(valueIncrement: 2);
          },
        ),
        0.015.ph,
        CustomIncrementButton(
          point: 3,
          onPressed: () {
            context.read<ProviderTeamA>().incrementScoreA(valueIncrement: 3);
          },
        ),
      ],
    );
  }
}
