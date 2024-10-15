import 'package:flutter/material.dart';

class ProviderTeamA with ChangeNotifier {
  int scoreA = 0;

  incrementScoreA({required int valueIncrement}) {
    scoreA+=valueIncrement;
    notifyListeners();
  }

  resetScoreA() {
    scoreA = 0;
    notifyListeners();
  }
}
