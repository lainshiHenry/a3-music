import 'package:a3_music/widget/character_selection_page.dart';
import 'package:flutter/material.dart';

class JukeboxMenuSection extends StatelessWidget {
  const JukeboxMenuSection({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;
  final List<String> _troupeHeaderImageBanner = const [
    'assets/images/app_images/Spring/Spring Troupe.png',
    'assets/images/app_images/Summer/Summer Troupe.png',
    'assets/images/app_images/Autumn/Autumn Troupe.png',
    'assets/images/app_images/Winter/Winter Troupe.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
