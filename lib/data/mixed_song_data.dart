import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';

List<Song> mixedSong = [
  Song(
      songName: 'Circle of Seasons',
      posterImageFileLocation:
          'assets/images/song_covers/mixed_troupe/circle_of_seasons.png',
      songAudioFileLocation: 'music/circle_of_seasons.mp3',
      singers: [Actor.sakuya, Actor.tenma, Actor.banri, Actor.tsumugi]),
  Song(
    songName: 'Golden Encore',
    songAudioFileLocation: 'music/golden_encore.mp3',
    singers: [Actor.chikage, Actor.kumon, Actor.azami, Actor.guy],
  ),
];
