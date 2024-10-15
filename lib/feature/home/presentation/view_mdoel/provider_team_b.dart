import 'package:flutter/material.dart';

class ProviderTeamB with ChangeNotifier {
  int scoreTeamB = 0;

  incrementScoreB({required int valueIncrement}) {
     scoreTeamB += valueIncrement;
    notifyListeners();
  }

  resetScoreB() {
    scoreTeamB = 0;
    notifyListeners();
  }
}
