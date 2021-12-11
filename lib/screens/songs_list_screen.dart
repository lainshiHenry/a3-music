import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';
import 'package:a3_music/services/music_album_services.dart';
import 'package:a3_music/services/theme_colour.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SongsListScreen extends StatelessWidget {
  final Character character;
  final ThemeColour _themeColour = ThemeColour();
  final List<Song> listOfSongs;
  final MusicAlbumService _musicAlbumService = MusicAlbumService();
  final AudioCache player = AudioCache();
  AudioPlayer _audioPlayerInstance = AudioPlayer();
  bool _isPlaying = false;

  List<Song> listOfFilteredSongs = List.empty(growable: true);
  List<Widget> listToBuild = List.empty(growable: true);

  SongsListScreen(
      {Key? key, required this.character, required this.listOfSongs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    listOfSongs.forEach((songElement) {
      if (_musicAlbumService.checkIfSingerSingsThisSong(
              character: character, song: songElement)! ==
          true) {
        listOfFilteredSongs.add(songElement);
      }
    });

    listOfFilteredSongs.forEach((element) {
      listToBuild.add(Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap: () async {
            element.songAudioFileLocation = 'music/dont_cry.mp3';
            if (_isPlaying) {
              _audioPlayerInstance.stop();
              _isPlaying = false;
            } else {
              // _audioPlayerInstance = await player.play('music/dont_cry.mp3');
              _audioPlayerInstance =
                  await player.play(element.songAudioFileLocation!);
              _isPlaying = true;
            }
            print(element.songName);
            // showModalBottomSheet(
            //   context: context,
            //   builder: (BuildContext context) {
            //     return Container(
            //       height: 100,
            //       child: Center(
            //         child: Text(element.songName!),
            //       ),
            //     );
            //   },
            // );
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(element.posterImageFileLocation!)),
            ),
          ),
        ),
      ));
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColour.getAppBarThemeColouring(character),
        centerTitle: true,
        title: Text(character.firstName!),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(character.glitterAssetImageLocation!),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.dstATop)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                children: listToBuild,
              ),
              // children: List.generate(
              //     10,
              //     (index) => Padding(
              //           padding: const EdgeInsets.all(15.0),
              //           child: Container(
              //             height: 100,
              //             width: 100,
              //             decoration: const BoxDecoration(
              //               color: Colors.blue,
              //             ),
              //           ),
              //         )),
            ),
          ],
        ),
      ),
    );
  }
}
