import 'package:a3_music/data/autumn_song_data.dart';
import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/character_song_data.dart';
import 'package:a3_music/data/mixed_song_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/data/spring_song_data.dart';
import 'package:a3_music/data/summer_song_data.dart';
import 'package:a3_music/data/winter_song_data.dart';

class Services {
  Services();

  void init() {
    characterList.addAll(springTroupe);
    characterList.addAll(summerTroupe);
    characterList.addAll(autumnTroupe);
    characterList.addAll(winterTroupe);

    songsList.addAll(springTroupeSongs);
    songsList.addAll(summerTroupeSongs);
    songsList.addAll(autumnTroupeSongs);
    songsList.addAll(winterTroupeSongs);
    songsList.addAll(characterSongs);
    songsList.addAll(mixedSong);
  }
}
