import 'package:a3_music/data/constants.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';
import 'package:a3_music/services/music_album_services.dart';
import 'package:a3_music/services/theme_colour.dart';
import 'package:flutter/material.dart';

class SongsListScreen extends StatelessWidget {
  final Character character;
  final ThemeColour _themeColour = ThemeColour();
  final List<Song> listOfSongs;
  final MusicAlbumService _musicAlbumService = MusicAlbumService();

  final List<Song> listOfFilteredSongs = List.empty(growable: true);
  final List<Widget> listToBuild = List.empty(growable: true);
  final List<bool> isPlayingList = List.empty(growable: true);

  void init() {
    for (var songElement in listOfSongs) {
      if (_musicAlbumService.checkIfSingerSingsThisSong(
              character: character, song: songElement)! ==
          true) {
        listOfFilteredSongs.add(songElement);
      }
    }

    for (var element in listOfFilteredSongs) {
      isPlayingList.add(false);

      listToBuild.add(
        ListTile(
          leading: Image(
            image: AssetImage(element.posterImageFileLocation!),
          ),
          title: Text(element.songName!),
          trailing: MusicPlayPauseButton(
            song: element,
            isPlayingL: isPlayingList,
            index: isPlayingList.length - 1,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        ),
      );
    }
  }

  SongsListScreen(
      {Key? key, required this.character, required this.listOfSongs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
                child: IconButton(
                  color: Colors.white,
                  iconSize: 30.0,
                  onPressed: () {
                    audioPlayer.stopSong();
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            ),
            Center(
              child: Image(
                image: AssetImage(character.assetImageLocation!),
              ),
            ),
            const Spacer(),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 300,
                ),
                child: ListView(
                  children: listToBuild,
                  shrinkWrap: true,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class MusicPlayPauseButton extends StatefulWidget {
  MusicPlayPauseButton({
    Key? key,
    //required this.isPlaying,
    required this.isPlayingL,
    required this.song,
    required this.index,
  }) : super(key: key);

  final List isPlayingL;
  bool isPlaying = false;
  final int index;
  final Song song;

  @override
  State<MusicPlayPauseButton> createState() => _MusicPlayPauseButtonState();
}

class _MusicPlayPauseButtonState extends State<MusicPlayPauseButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          if (!widget.isPlaying) {
            await audioPlayer.playSong(
                musicLocation: widget.song.songAudioFileLocation);
            widget.isPlaying = true;
            widget.isPlayingL[widget.index] = true;
            setState(() {});
          } else if (widget.isPlaying) {
            audioPlayer.pauseSong();
            widget.isPlaying = false;
            widget.isPlayingL[widget.index] = false;
            setState(() {});
          }
          print(widget.isPlayingL);
        },
        icon: Icon(
          //widget.isPlaying ? Icons.pause : Icons.play_arrow,
          widget.isPlayingL[widget.index] ? Icons.pause : Icons.play_arrow,
        ));
  }
}
