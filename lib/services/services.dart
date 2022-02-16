import 'dart:async';

import 'package:a3_music/data/autumn_song_data.dart';
import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/character_song_data.dart';
import 'package:a3_music/data/mixed_song_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/data/spring_song_data.dart';
import 'package:a3_music/data/summer_song_data.dart';
import 'package:a3_music/data/winter_song_data.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';
import 'package:a3_music/services/converter.dart';
import 'package:flutter/services.dart' show rootBundle;

class Services {
  Services();

  void init() async {
    // String _rawCSVData = await loadCSV();

    // print(_rawCSVData);
    loadCharacterList();
    loadSongsList();
  }

  void loadSongsList() {
    // songsList = await processRawCSVData(_rawCSVData);

    songsList.addAll(springTroupeSongs);
    songsList.addAll(summerTroupeSongs);
    songsList.addAll(autumnTroupeSongs);
    songsList.addAll(winterTroupeSongs);
    songsList.addAll(characterSongs);
    songsList.addAll(mixedSong);
  }

  Future<void> loadCharacterList() async {
    characterList.addAll(springTroupe);
    characterList.addAll(summerTroupe);
    characterList.addAll(autumnTroupe);
    characterList.addAll(winterTroupe);
  }

  Future<String> loadCSV() async {
    print('loading csv');
    return await rootBundle.loadString('assets/csv/testA3Music.csv');
  }

  Future<List<Song>> processRawCSVData(String rawCSVData) async {
    List<Song> _resultList = List.empty(growable: true);
    List _rawCSVList = rawCSVData.split('\n');
    for (int index in _rawCSVList) {
      _resultList.add(processCSVRowData(_rawCSVList[index]));
    }
    // Song _resultSong = processCSVRowData(_rawCSVList[1]);
    // _resultList.add(_resultSong);
    return _resultList;
  }

  Song processCSVRowData(String csvRowData) {
    List dataToProcess = csvRowData.split(',');
    List actorsListRawData = dataToProcess[5].split(';');
    List<Actor> actorsList = List.empty(growable: true);

    for (String i in actorsListRawData) {
      actorsList.add(fromStringToActor(i));
      // print(i
    }

    return Song(
      songName: dataToProcess[1],
      playName: dataToProcess[2],
      songAudioFileLocation: dataToProcess[3],
      posterImageFileLocation: dataToProcess[4],
      singers: actorsList,
    );
  }
}
