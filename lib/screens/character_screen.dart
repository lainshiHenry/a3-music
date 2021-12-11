import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/services/services.dart';
import 'package:flutter/material.dart';

import 'songs_list_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Services _services = Services();

  @override
  void initState() {
    _services.init();
    super.initState();
  }

  List<Widget> buildCharacterList() {
    List<Widget> _resultList = List.empty(growable: true);
    for (var character in characterList) {
      if (character.chibiAssetImageLocation != '') {
        _resultList.add(GestureDetector(
          onTap: () {
            print(character.firstName! + ' was pressed');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SongsListScreen(
                          character: character,
                          listOfSongs: songsList,
                        )));
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
      // backgroundColor: Colors.green,
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
        color: Colors.pink[100],
        image: DecorationImage(
          fit: BoxFit.contain,
          image:
              Image.asset(character!.chibiAssetImageLocation.toString()).image,
        ),
      ),
    );
  }
}
