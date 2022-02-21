import 'package:a3_music/services/services.dart';
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
    double _widthOfBox =
        (MediaQuery.of(context).size.width * 0.7);
    print(_widthOfBox);

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
                Row(
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
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                BottomNavigationMenuSection(
                    mainMenuPageController: _mainMenuPageController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
