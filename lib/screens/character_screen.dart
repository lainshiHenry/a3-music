import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';
import 'package:a3_music/screens/songs_list_screen.dart';
import 'package:a3_music/services/services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Services _services = Services();
  Song currentSong = Song();

  void updateCurrentSongCallback(Song song) {
    setState(() {
      currentSong = song;
    });
    buildCharacterList(currentSong);
    print('current song has been updated to: ${currentSong.songName}');
  }

  @override
  void initState() {
    _services.init();
    super.initState();
  }

  List<Widget> buildCharacterList(Song currentSongPlaying) {
    List<Widget> _resultList = List.empty(growable: true);
    for (var character in characterList) {
      if (character.chibiAssetImageLocation != '') {
        _resultList.add(GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SongsListScreen(
                  character: character,
                  listOfSongs: songsList,
                  updateSongCallbackFunction: updateCurrentSongCallback,
                ),
              ),
            );
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
      // backgroundColor: Colors.green,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 4,
            scrollDirection: Axis.vertical,
            children: buildCharacterList(Song()),
          ),
        ),
      ),
    );
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
        //color: Colors.pink[100],
        image: DecorationImage(
          fit: BoxFit.contain,
          image:
              Image.asset(character!.chibiAssetImageLocation.toString()).image,
        ),
      ),
    );
  }
}
