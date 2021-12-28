import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';

List<Song> winterTroupeSongs = [
  Song(
    songName: 'Don\'t Cry',
    playName: 'Sympathy for the Angel',
    songAudioFileLocation: 'music/dont_cry.mp3',
    posterImageFileLocation:
        'assets/images/song_covers/troupe_song/winter/Sympathy_for_the_Angel_Poster.png',
    singers: [Actor.tsumugi, Actor.tasuku],
  ),
  Song(
    songName: 'To Bloom',
    songAudioFileLocation: 'music/to_bloom.mp3',
    singers: [
      Actor.tsumugi,
      Actor.tasuku,
      Actor.hisoka,
      Actor.homare,
      Actor.azuma
    ],
  ),
  Song(
    songName: 'Precious To Us',
    songAudioFileLocation: 'music/precious_to_us.mp3',
    singers: [
      Actor.tsumugi,
      Actor.tasuku,
      Actor.hisoka,
      Actor.homare,
      Actor.azuma,
      Actor.guy
    ],
  ),
];
