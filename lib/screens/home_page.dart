import 'package:a3_music/services/services.dart';
import 'package:a3_music/widget/character_selection_page.dart';
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

  final Curve _pageControllerCurves = Curves.ease;
  final Duration _pageControllerDuration = const Duration(milliseconds: 500);

  final List<String> _troupeHeaderImageBanner = [
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
    _mainMenuPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/app_images/Background Base.png'),
            // image: AssetImage(
            //     'assets/images/app_images/Spring/Spring Template.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: RawMaterialButton(
                    constraints:
                        const BoxConstraints(minWidth: 35, minHeight: 35),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                    ),
                    onPressed: () {},
                    fillColor: Colors.grey[300],
                    child: const Icon(
                      Icons.arrow_back,
                      size: 28,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 100, right: 175),
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  child: PageView(
                    controller: _mainMenuPageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(),
                        ),
                        child: PageView(
                          controller: _pageController,
                          children: [
                            CharacterSelectionPage(
                              pageIndex: 0,
                              remainingWidth: 562,
                              bannerImageLocation: _troupeHeaderImageBanner[0],
                            ),
                            CharacterSelectionPage(
                              pageIndex: 1,
                              remainingWidth: 562,
                              bannerImageLocation: _troupeHeaderImageBanner[1],
                            ),
                            CharacterSelectionPage(
                              pageIndex: 2,
                              remainingWidth: 562,
                              bannerImageLocation: _troupeHeaderImageBanner[2],
                            ),
                            CharacterSelectionPage(
                              pageIndex: 3,
                              remainingWidth: 562,
                              bannerImageLocation: _troupeHeaderImageBanner[3],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.green,
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
                      Container(
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 81.5, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BottomNavigationItem(
                        assetImageLocation: 'assets/images/app_images/Home.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(0,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                      BottomNavigationItem(
                        assetImageLocation:
                            'assets/images/app_images/Story.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(1,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                      BottomNavigationItem(
                        assetImageLocation:
                            'assets/images/app_images/Actors.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(2,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                      BottomNavigationItem(
                        assetImageLocation:
                            'assets/images/app_images/Plays.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(3,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                      BottomNavigationItem(
                        assetImageLocation:
                            'assets/images/app_images/Earn Cash.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(4,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                      BottomNavigationItem(
                        assetImageLocation:
                            'assets/images/app_images/Tryouts.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(5,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                      BottomNavigationItem(
                        assetImageLocation: 'assets/images/app_images/Menu.png',
                        onTapFunction: () {
                          _mainMenuPageController.animateToPage(6,
                              duration: _pageControllerDuration,
                              curve: _pageControllerCurves);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String? _buttonAssetImageLocation;
  final String? _onClickButtonAssetImageLocation;
  final Function()? _onTapFunction;

  const BottomNavigationItem({
    Key? key,
    required String? assetImageLocation,
    String? onClickAssetImageLocation,
    Function()? onTapFunction,
  })  : _buttonAssetImageLocation = assetImageLocation,
        _onClickButtonAssetImageLocation = onClickAssetImageLocation,
        _onTapFunction = onTapFunction,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapFunction!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.25),
        child: Image(
          image: AssetImage(_buttonAssetImageLocation!),
          height: 43,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
