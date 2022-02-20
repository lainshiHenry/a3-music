import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int _currentNavigationPosition;

  const MainBottomNavigationBar({Key? key, required int currentPosition})
      : _currentNavigationPosition = currentPosition,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Container(
    //         color: Colors.blue,
    //         height: 50,
    //         width: 50,
    //       ),
    //       Container(
    //         color: Colors.yellow,
    //         height: 50,
    //         width: 50,
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         height: 50,
    //         width: 50,
    //       ),
    //       Container(
    //         color: Colors.red,
    //         height: 50,
    //         width: 150,
    //       ),
    //       Container(
    //         color: Colors.yellow,
    //         height: 50,
    //         width: 50,
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         height: 50,
    //         width: 50,
    //       ),
    //       Container(
    //         color: Colors.yellow,
    //         height: 50,
    //         width: 50,
    //       ),
    //     ],
    //   ),
    // );
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/app_images/Home.png')),
            label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      ],
    );
  }
}
