import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/lines.dart';
import 'package:a3_music/screens/story/story_conversation_screen.dart';
import 'package:a3_music/services/services.dart';
import 'package:a3_music/widget/character_selection_page.dart';
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
  List<String> _troupeHeaderImageBanner = [
    'assets/images/app_images/Spring/Spring Troupe.png',
    'assets/images/app_images/Summer/Summer Troupe.png',
    'assets/images/app_images/Autumn/Autumn Troupe.png',
    'assets/images/app_images/Winter/Winter Troupe.png'
  ];

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
                icon: const ImageIcon(
                  AssetImage('assets/images/app_images/Left Click.png'),
                ),
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
                    bannerImageLocation: _troupeHeaderImageBanner[0],
                  ),
                  CharacterSelectionPage(
                    pageIndex: 1,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                    bannerImageLocation: _troupeHeaderImageBanner[1],
                  ),
                  CharacterSelectionPage(
                    pageIndex: 2,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                    bannerImageLocation: _troupeHeaderImageBanner[2],
                  ),
                  CharacterSelectionPage(
                    pageIndex: 3,
                    remainingWidth: MediaQuery.of(context).size.width - 200,
                    bannerImageLocation: _troupeHeaderImageBanner[3],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const ImageIcon(
                AssetImage('assets/images/app_images/Right Click.png'),
              ),
              onPressed: () {
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
                      child: const Center(child: Text('Spring')),
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
                      child: const Center(child: Text('Summer')),
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
                      child: const Center(child: Text('Autumn')),
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
                      child: const Center(child: Text('Winter')),
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
                      child: const Center(child: Text('Story')),
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
