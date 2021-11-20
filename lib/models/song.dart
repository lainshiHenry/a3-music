import 'package:a3_music/models/character.dart';

class Song {
  String? songName;
  String? songAudioFileLocation;
  String? playName;
  String? posterImageFileLocation;
  List<Actor> singers;

  Song({
    this.songName = '',
    this.songAudioFileLocation = '',
    this.posterImageFileLocation = '',
    this.playName = '',
    this.singers = const [],
  });
}
