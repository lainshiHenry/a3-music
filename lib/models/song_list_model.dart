import 'package:a3_music/models/song.dart';
import 'package:flutter/material.dart';

class SongListModel extends ChangeNotifier {
  List<Song> _songsList = [];
  Song _currentSong = Song();
  bool _isPlaying = false;

  List<Song> get getSongsList => _songsList;
  Song get getCurrentSong => _currentSong;
  bool get getIsPlaying => _isPlaying;

  void play() {
    notifyListeners();
  }

  void pause() {
    notifyListeners();
  }

  void setCurrentSong(Song currentSongToSet) {
    _currentSong = currentSongToSet;
    notifyListeners();
  }
}
