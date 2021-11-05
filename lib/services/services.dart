import 'package:a3_music/data/character_data.dart';

class Services {
  Services();

  void init() {
    characterList.addAll(springTroupe);
    characterList.addAll(summerTroupe);
    characterList.addAll(autumnTroupe);
    characterList.addAll(winterTroupe);
  }
}
