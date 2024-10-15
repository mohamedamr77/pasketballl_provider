import 'package:flutter/material.dart';

class ProviderTeamA with ChangeNotifier{
  int scoreA=0;

  incrementScoreA({required valueIncrement}){
    if (valueIncrement==1){
      scoreA++;
    } else if (valueIncrement==2){
      scoreA+=2;
    } else if (valueIncrement== 3) {
      scoreA+=3;
    } else{
      scoreA +=4;
    }
    notifyListeners();
  }

  resetScoreA(){
    scoreA=0;
    notifyListeners();
  }
}