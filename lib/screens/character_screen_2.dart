import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/data/song_data.dart';
import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/lines.dart';
import 'package:a3_music/screens/songs_list_screen.dart';
import 'package:a3_music/screens/story/story_conversation_screen.dart';
import 'package:a3_music/services/services.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  final Services _services = Services();
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    _services.init();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.ease);
                }),
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                controller: _pageController,
                children: [
                  CharacterSelectionPage(
                    pageIndex: 0,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                  ),
                  CharacterSelectionPage(
                    pageIndex: 1,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                  ),
                  CharacterSelectionPage(
                    pageIndex: 2,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                  ),
                  CharacterSelectionPage(
                    pageIndex: 3,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                print('current page ' + _pageController.page.toString());
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease);
              },
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              height: 300,
              width: 100,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.ease);
                    },
                    child: Container(
                      color: Colors.grey,
                      width: 80,
                      height: 50,
                      child: Center(child: Text('Spring')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.ease);
                    },
                    child: Container(
                      color: Colors.grey,
                      width: 80,
                      height: 50,
                      child: Center(child: Text('Summer')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(2,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.ease);
                    },
                    child: Container(
                      color: Colors.grey,
                      width: 80,
                      height: 50,
                      child: Center(child: Text('Autumn')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(3,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.ease);
                    },
                    child: Container(
                      color: Colors.grey,
                      width: 80,
                      height: 50,
                      child: Center(child: Text('Winter')),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoryConversationScreen(
                            storyLine: [
                              Line(
                                talkingCharacterName: 'Sakuya',
                                talkingCharacterText: 'Hello',
                                talkingCharacter: Character(
                                  actor: Actor.sakuya,
                                  firstName: 'Sakuya',
                                  lastName: 'Sakuma',
                                  assetImageLocation:
                                      'assets/images/characters/faces/sakuya.png',
                                  troupe: Troupe.spring,
                                  glitterAssetImageLocation:
                                      'assets/images/characters/glitter/sakuya_glitter.png',
                                  chibiAssetImageLocation:
                                      'assets/images/characters/chibi/sakuya_chibi.png',
                                  fullBodyAssetImageLocation:
                                      'assets/images/characters/fullbody/sakuya.png',
                                ),
                              ),
                              Line(
                                talkingCharacterName: 'Tsumugi',
                                talkingCharacterText: 'How Are you?',
                                talkingCharacter: Character(
                                  actor: Actor.tsumugi,
                                  firstName: 'Tsumugi',
                                  lastName: 'Tsukioka',
                                  assetImageLocation:
                                      'assets/images/characters/faces/tsumugi.png',
                                  glitterAssetImageLocation:
                                      'assets/images/characters/glitter/tsumugi_glitter.png',
                                  troupe: Troupe.winter,
                                  chibiAssetImageLocation:
                                      'assets/images/characters/chibi/tsumugi_chibi.png',
                                  fullBodyAssetImageLocation:
                                      'assets/images/characters/fullbody/tsumugi.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      width: 80,
                      height: 50,
                      child: Center(child: Text('Story')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CharacterSelectionPage extends StatelessWidget {
  final int _pageIndex;
  final double _remainingWidth;
  const CharacterSelectionPage(
      {Key? key, required int pageIndex, required double remainingWidth})
      : _pageIndex = pageIndex,
        _remainingWidth = remainingWidth,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CharacterRowItem(
          index: (0 + (6 * _pageIndex)),
          width: _remainingWidth / 6,
        ),
        CharacterRowItem(
          index: (1 + (6 * _pageIndex)),
          width: _remainingWidth / 6,
        ),
        CharacterRowItem(
          index: (2 + (6 * _pageIndex)),
          width: _remainingWidth / 6,
        ),
        CharacterRowItem(
          index: (3 + (6 * _pageIndex)),
          width: _remainingWidth / 6,
        ),
        CharacterRowItem(
          index: (4 + (6 * _pageIndex)),
          width: _remainingWidth / 6,
        ),
        CharacterRowItem(
          index: (5 + (6 * _pageIndex)),
          width: _remainingWidth / 6,
        ),
      ],
    );
  }
}

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
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          image: DecorationImage(
            image: AssetImage(characterList[_index].assetImageLocation!),
          ),
        ),
        height: 300,
        width: _width,
        child: Text(
          characterList[_index].firstName!,
          softWrap: true,
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
