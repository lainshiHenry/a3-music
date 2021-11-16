import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/services/services.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'songs_list_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Services _services = Services();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    _services.init();
    super.initState();
  }

  List<Widget> buildCharacterList() {
    List<Widget> _resultList = List.empty(growable: true);
    for (var character in characterList) {
      if (character.assetImageLocation != '') {
        _resultList.add(GestureDetector(
          onTap: () {
            print(character.firstName! + ' was pressed');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SongsListScreen(character: character)));
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: TopRowCircleCharacterIcon(
              character: character,
            ),
          ),
        ));
      }
    }

    return _resultList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A3 Music Player'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.vertical,
            children: buildCharacterList(),
          ),
        ),
      ),
    );
  }

  Widget _playerButton(PlayerState playerState) {
    final ProcessingState processingState = playerState.processingState;

    if (processingState == ProcessingState.loading ||
        processingState == ProcessingState.buffering) {
      return Container(
        margin: const EdgeInsets.all(8.0),
        width: 64.0,
        height: 64.0,
        child: const CircularProgressIndicator(),
      );
    } else if (audioPlayer.playing != true) {
      return IconButton(
        icon: const Icon(Icons.play_arrow),
        iconSize: 64.0,
        onPressed: () => audioPlayer.play(),
      );
    } else if (processingState != ProcessingState.completed) {
      return IconButton(
        icon: const Icon(Icons.pause),
        iconSize: 64.0,
        onPressed: () => audioPlayer.pause(),
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.replay),
        iconSize: 64.0,
        onPressed: () => audioPlayer.seek(Duration.zero,
            index: audioPlayer.effectiveIndices!.first),
      );
    }
  }
}

class TopRowCircleCharacterIcon extends StatelessWidget {
  final Character? character;

  const TopRowCircleCharacterIcon({
    Key? key,
    this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.asset(character!.assetImageLocation.toString()).image,
        ),
      ),
    );
  }
}
