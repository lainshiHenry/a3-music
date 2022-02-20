import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/screens/songs_list_screen.dart';
import 'package:flutter/material.dart';

class CharacterRowItem extends StatelessWidget {
  final int _index;
  final double _width;

  const CharacterRowItem({
    required int index,
    double width = 75.0,
    Key? key,
  })  : _index = index,
        _width = width,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            // border: Border.all(),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: characterList[_index].characterSelectionImageLocation != ''
                  ? Image.asset(
                      characterList[_index].characterSelectionImageLocation!,
                      alignment: Alignment.topCenter,
                    ).image
                  : AssetImage(characterList[_index].assetImageLocation!),
              // image: AssetImage(characterList[_index].as setImageLocation!),
            ),
          ),
          // height: 300,
          width: _width - 10,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SongsListScreen(
              character: characterList[_index],
              listOfSongs: songsList,
              updateSongCallbackFunction: () {},
            ),
          ),
        );
      },
    );
  }
}
