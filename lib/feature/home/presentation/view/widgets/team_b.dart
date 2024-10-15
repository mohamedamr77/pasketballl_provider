import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/score.dart';
import 'package:basketsballprovider/feature/home/presentation/view_mdoel/provider_team_b.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        Selector<ProviderTeamB,int>(builder: (context, score, child) {
          return Score(
            score: score,
          );
        }, selector: (context, providerTeamB) {
          return providerTeamB.scoreTeamB;
        },),
        CustomIncrementButton(
          point: 1,
          onPressed: () {
            context.read<ProviderTeamB>().incrementScoreB(valueIncrement: 1);
          },
        ),
        0.015.ph,
        CustomIncrementButton(
          point: 2,
          onPressed: () {
            context.read<ProviderTeamB>().incrementScoreB(valueIncrement: 1);

          },
        ),
        0.015.ph,
        CustomIncrementButton(
          point: 3,
          onPressed: () {
            context.read<ProviderTeamB>().incrementScoreB(valueIncrement: 3);

          },
        ),
      ],
    );
  }
}
