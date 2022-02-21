import 'package:a3_music/widget/character_row_item.dart';
import 'package:flutter/material.dart';

class CharacterSelectionPage extends StatelessWidget {
  final int _pageIndex;
  final double _remainingWidth;
  final String? _troupeBannerImageLocation;
  const CharacterSelectionPage({
    Key? key,
    required int pageIndex,
    required double remainingWidth,
    required String? bannerImageLocation,
  })  : _pageIndex = pageIndex,
        _remainingWidth = remainingWidth,
        _troupeBannerImageLocation = bannerImageLocation,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Image(
          image: AssetImage(_troupeBannerImageLocation!),
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 0),
          child: Row(
            children: [
              CharacterRowItem(
                index: (0 + (6 * _pageIndex)),
                width: _remainingWidth.floor().toDouble() / 6,
              ),
              CharacterRowItem(
                index: (1 + (6 * _pageIndex)),
                width: _remainingWidth.floor().toDouble() / 6,
              ),
              CharacterRowItem(
                index: (2 + (6 * _pageIndex)),
                width: _remainingWidth.floor().toDouble() / 6,
              ),
              CharacterRowItem(
                index: (3 + (6 * _pageIndex)),
                width: _remainingWidth.floor().toDouble() / 6,
              ),
              CharacterRowItem(
                index: (4 + (6 * _pageIndex)),
                width: _remainingWidth.floor().toDouble() / 6,
              ),
              CharacterRowItem(
                index: (5 + (6 * _pageIndex)),
                width: _remainingWidth.floor().toDouble() / 6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
