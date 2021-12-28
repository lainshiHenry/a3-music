import 'package:a3_music/models/character.dart';
import 'package:flutter/widgets.dart';

class Song extends ChangeNotifier {
  String? songName;
  String? songAudioFileLocation;
  String? playName;
  String? posterImageFileLocation;
  List<Actor> singers = [];

  Song({
    this.songName = '',
    this.songAudioFileLocation = '',
    this.posterImageFileLocation = 'assets/images/a3_logo.png',
    // this.posterImageFileLocation,
    this.playName = '',
    this.singers = const [],
  });
}
