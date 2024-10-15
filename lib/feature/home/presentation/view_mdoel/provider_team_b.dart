import 'package:flutter/material.dart';

class ProviderTeamB with ChangeNotifier{

  int scoreTeamB= 0;


  incrementScoreB({required valueIncrement}){
    if (valueIncrement==1){
      scoreTeamB++;
    } else if (valueIncrement==2){
      scoreTeamB+=2;
    } else if (valueIncrement== 3) {
      scoreTeamB+=3;
    } else{
      scoreTeamB +=4;
    }
    notifyListeners();
  }

  resetScoreB(){
    scoreTeamB=0;
    notifyListeners();
  }
}