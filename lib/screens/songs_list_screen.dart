import 'package:a3_music/data/constants.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/song.dart';
import 'package:a3_music/models/song_list_model.dart';
import 'package:a3_music/services/music_album_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SongsListScreen extends StatelessWidget {
  final Character character;
  final List<Song> listOfSongs;
  final Function updateSongCallbackFunction;

  final MusicAlbumService _musicAlbumService = MusicAlbumService();
  final List<Song> listOfFilteredSongs = List.empty(growable: true);
  final List<Widget> listToBuild = List.empty(growable: true);
  final List<bool> isPlayingList = List.empty(growable: true);

  SongsListScreen({
    Key? key,
    required this.character,
    required this.listOfSongs,
    required this.updateSongCallbackFunction,
  }) : super(key: key);

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
            width: 120,
            //height: 150,
            fit: BoxFit.fitHeight,
          ),
          title: Text(
            element.songName!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
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

  @override
  Widget build(BuildContext context) {
    Song currentSongPlaying =
        Provider.of<SongListModel>(context).getCurrentSong;

    print(currentSongPlaying);
    print(currentSongPlaying.posterImageFileLocation);

    if (listOfFilteredSongs.isEmpty) {
      init();
    }
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
                    var data = Provider.of<SongListModel>(
                      context,
                      listen: false,
                    ).getCurrentSong;
                    print(data.songName);
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
              // child: LeftSideImageWidget(
              //     imageString: currentSongPlaying.posterImageFileLocation!),
              child: LeftSideImageWidget(
                imageString: currentSongPlaying.posterImageFileLocation !=
                        'assets/images/a3_logo.png'
                    ? currentSongPlaying.posterImageFileLocation!
                    : character.assetImageLocation!,
              ),
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: 400,
                height: 300,
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

class LeftSideImageWidget extends StatefulWidget {
  const LeftSideImageWidget({
    Key? key,
    required this.imageString,
  }) : super(key: key);

  final String imageString;

  @override
  State<LeftSideImageWidget> createState() => _LeftSideImageWidgetState();
}

class _LeftSideImageWidgetState extends State<LeftSideImageWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.imageString);
    return Image(
      image: AssetImage(widget.imageString),
      height: 200,
      width: 200,
      fit: BoxFit.fitWidth,
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
            //widget.songUpdateCallbackFunction(widget.song);
            widget.isPlayingL[widget.index] = true;
            Provider.of<SongListModel>(
              context,
              listen: false,
            ).setCurrentSong(widget.song);

            setState(() {});
          } else if (widget.isPlaying) {
            audioPlayer.pauseSong();
            widget.isPlaying = false;
            widget.isPlayingL[widget.index] = false;
            //widget.songUpdateCallbackFunction(Song());
            Provider.of<SongListModel>(
              context,
              listen: false,
            ).setCurrentSong(Song());
            setState(() {});
          }
        },
        icon: Icon(
          //widget.isPlaying ? Icons.pause : Icons.play_arrow,
          widget.isPlayingL[widget.index] ? Icons.pause : Icons.play_arrow,
        ));
  }
}
