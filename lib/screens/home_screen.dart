import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/services/services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Services _services = Services();

  @override
  void initState() {
    _services.init();
    super.initState();
  }

  List<Widget> buildTopRowList() {
    List<Widget> _resultList = List.empty(growable: true);
    for (var character in characterList) {
      if (character.assetImageLocation != '') {
        _resultList.add(GestureDetector(
          onTap: () {
            print(character.firstName! + ' was tapped');
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: TopRowCircleCharacterIcon(
              assetImageLocation: character.assetImageLocation,
            ),
          ),
        ));
      }
    }

    return _resultList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A3 Music Player'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: buildTopRowList(),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class TopRowCircleCharacterIcon extends StatelessWidget {
  String? assetImageLocation;

  TopRowCircleCharacterIcon({
    Key? key,
    this.assetImageLocation = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.asset(assetImageLocation.toString()).image,
        ),
      ),
    );
  }
}
