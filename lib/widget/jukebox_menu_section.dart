import 'package:a3_music/widget/character_selection_page.dart';
import 'package:flutter/material.dart';

class JukeboxMenuSection extends StatelessWidget {
  const JukeboxMenuSection({
    Key? key,
    required PageController pageController,
    required double widthOfBox,
  })  : _pageController = pageController,
        _widthOfBox = widthOfBox,
        super(key: key);

  final double _widthOfBox;
  final PageController _pageController;
  final List<String> _troupeHeaderImageBanner = const [
    'assets/images/app_images/Spring/Spring Troupe.png',
    'assets/images/app_images/Summer/Summer Troupe.png',
    'assets/images/app_images/Autumn/Autumn Troupe.png',
    'assets/images/app_images/Winter/Winter Troupe.png'
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        // margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(width: 2),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(5.0))),
        child: PageView(
          controller: _pageController,
          children: [
            CharacterSelectionPage(
              pageIndex: 0,
              remainingWidth: _widthOfBox,
              bannerImageLocation: _troupeHeaderImageBanner[0],
            ),
            CharacterSelectionPage(
              pageIndex: 1,
              remainingWidth: _widthOfBox,
              bannerImageLocation: _troupeHeaderImageBanner[1],
            ),
            CharacterSelectionPage(
              pageIndex: 2,
              remainingWidth: _widthOfBox,
              bannerImageLocation: _troupeHeaderImageBanner[2],
            ),
            CharacterSelectionPage(
              pageIndex: 3,
              remainingWidth: _widthOfBox,
              bannerImageLocation: _troupeHeaderImageBanner[3],
            ),
          ],
        ),
      ),
    );
  }
}
