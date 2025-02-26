import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_mdoel/provider_team_a.dart';
import '../../view_mdoel/provider_team_b.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 2,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: ElevatedButton(
          onPressed: () {
            context.read<ProviderTeamA>().resetScoreA();
            context.read<ProviderTeamB>().resetScoreB();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: const Text(
            "Reset",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
