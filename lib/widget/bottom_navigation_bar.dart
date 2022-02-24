import 'package:a3_music/widget/bottom_navigation_menu_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationMenuSection extends StatelessWidget {
  const BottomNavigationMenuSection({
    Key? key,
    required PageController mainMenuPageController,
    required Function voidCallbackFunction,
  })  : _mainMenuPageController = mainMenuPageController,
        _voidCallback = voidCallbackFunction,
        super(key: key);

  final PageController _mainMenuPageController;
  final Function _voidCallback;
  final Curve _pageControllerCurves = Curves.ease;
  final Duration _pageControllerDuration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Home.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(0,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(0);
                },
              ),
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Story.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(1,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(1);
                },
              ),
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Actors.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(2,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(2);
                },
              ),
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Plays.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(3,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(3);
                },
              ),
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Earn Cash.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(4,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(4);
                },
              ),
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Tryouts.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(5,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(5);
                },
              ),
              BottomNavigationItem(
                assetImageLocation: 'assets/images/app_images/Menu.png',
                onTapFunction: () {
                  _mainMenuPageController.animateToPage(6,
                      duration: _pageControllerDuration,
                      curve: _pageControllerCurves);
                  _voidCallback(6);
                },
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
