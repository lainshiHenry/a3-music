import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';

List<Song> characterSongs = [
  Song(
    songName: 'Akaikami no Cherry Blossom',
    songAudioFileLocation: 'music/akaikami_no_cherry_blossom.mp3',
    posterImageFileLocation:
        'assets/images/song_covers/character_song/sakuya.png',
    singers: [Actor.sakuya],
  ),
  Song(
    songName: 'My Dictionary',
    songAudioFileLocation: 'music/my_dictionary.mp3',
    posterImageFileLocation:
        'assets/images/song_covers/character_song/my_dictionary.png',
    singers: [Actor.sakuya],
  ),
];
