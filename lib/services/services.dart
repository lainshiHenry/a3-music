import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/data/winter_song_data.dart';

class Services {
  Services();

  void init() {
    characterList.addAll(springTroupe);
    characterList.addAll(summerTroupe);
    characterList.addAll(autumnTroupe);
    characterList.addAll(winterTroupe);

    songsList.addAll(winterTroupeSongs);
  }
}
