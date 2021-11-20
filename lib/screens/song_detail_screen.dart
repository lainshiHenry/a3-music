import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SongDetailScreen extends StatefulWidget {
  const SongDetailScreen({Key? key}) : super(key: key);
  static String id = 'song_details_screen';

  @override
  _SongDetailScreenState createState() => _SongDetailScreenState();
}

class _SongDetailScreenState extends State<SongDetailScreen> {
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
