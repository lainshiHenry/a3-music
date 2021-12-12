import 'package:audioplayers/audioplayers.dart';

class AudioFunctions {
  final AudioPlayer _audioPlayerInstance = AudioPlayer();
  AudioCache player = AudioCache();

  AudioFunctions() {
    init();
  }

  void init() {
    player = AudioCache(fixedPlayer: _audioPlayerInstance);
    _audioPlayerInstance.setVolume(1);
  }

  Future<bool> playSong({String? musicLocation}) async {
    try {
      getAudioPlayerState() == PlayerState.PLAYING
          ? _audioPlayerInstance.resume()
          : await player.play(musicLocation!);
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  void pauseSong() {
    if (getAudioPlayerState() == PlayerState.PLAYING) {
      _audioPlayerInstance.pause();
    }
  }

  void stopSong() => _audioPlayerInstance.stop();

  Future<int> getSongDuration() async =>
      await _audioPlayerInstance.getDuration();
  Future<int> getSongCurrentDuration() async =>
      await _audioPlayerInstance.getCurrentPosition();
  PlayerState getAudioPlayerState() => _audioPlayerInstance.state;
}
