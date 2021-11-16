import 'package:a3_music/models/character.dart';
import 'package:a3_music/services/theme_colour.dart';
import 'package:flutter/material.dart';

class SongsListScreen extends StatelessWidget {
  final Character character;
  final ThemeColour _themeColour = ThemeColour();
  SongsListScreen({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColour.getAppBarThemeColouring(character),
        centerTitle: true,
        title: Text(character.firstName!),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
