import 'package:flutter/material.dart';

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
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.25),
          child: Image(
            image: AssetImage(_buttonAssetImageLocation!),
            // height: 43,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
