import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';

class MusicAlbumService {
  MusicAlbumService();

  bool? checkIfSingerSingsThisSong(
      {required Character? character, required Song? song}) {
    return song?.singers.contains(character?.actor);
  }
}
