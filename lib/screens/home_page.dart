import 'package:a3_music/screens/story/story_conversation_screen.dart';
import 'package:a3_music/services/services.dart';
import 'package:a3_music/story_data/sample_story.dart';
import 'package:a3_music/widget/bottom_navigation_bar.dart';
import 'package:a3_music/widget/jukebox_menu_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Services _services = Services();
  final PageController _mainMenuPageController = PageController(initialPage: 0);
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  void updateCurrentPage(int newIndex) {
    setState(() {
      _currentPage = newIndex;
    });
  }

  @override
  void initState() {
    _services.init();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _mainMenuPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _widthOfBox = (MediaQuery.of(context).size.width * 0.7);
    print(_widthOfBox);

    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/app_images/Background Base.png'),
        //     // image: AssetImage(
        //     //     'assets/images/app_images/Spring/Spring Template.png'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.end,
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: _screenHeight * 0.9,
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/app_images/Right Side/BG Clear copy.png'),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                _currentPage != 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: RawMaterialButton(
                          constraints:
                              BoxConstraints(minWidth: 35, minHeight: 35),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            _mainMenuPageController.animateToPage(0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                            updateCurrentPage(0);
                          },
                          fillColor: Colors.grey[300],
                          child: const Icon(
                            Icons.arrow_back,
                            size: 28,
                          ),
                        ),
                      )
                    : SizedBox(
                        height: 48,
                      ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        color: Colors.blue,
                        width: _widthOfBox,
                        height: 270,
                        child: PageView(
                          controller: _mainMenuPageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Container(
                              color: Colors.blue,
                            ),
                            Container(
                              color: Colors.green,
                              child: Center(
                                child: ElevatedButton(
                                  child: Text('Load Story'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            StoryConversationScreen(
                                          storyLine: sampleStoryText,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.yellow,
                            ),
                            Container(
                              color: Colors.red,
                            ),
                            Container(
                              color: Colors.pink,
                            ),
                            JukeboxMenuSection(
                              pageController: _pageController,
                              widthOfBox: _widthOfBox,
                            ),
                            Container(
                              color: Colors.purple,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                BottomNavigationMenuSection(
                  mainMenuPageController: _mainMenuPageController,
                  voidCallbackFunction: updateCurrentPage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
