import 'package:a3_music/models/character.dart';
import 'package:flutter/material.dart';

class ThemeColour {
  ThemeColour();

  Color getAppBarThemeColouring(Character character) {
    Color? springTroupeColour = Colors.pink[100];
    Color? summerTroupeColour = Colors.yellow[600];
    Color? autumnTroupeColour = Colors.orangeAccent;
    Color? winterTroupeColour = Colors.blue;

    switch (character.troupe) {
      case 'Spring':
        return springTroupeColour!;

      case 'Summer':
        return summerTroupeColour!;

      case 'Autumn':
        return autumnTroupeColour;

      case 'Winter':
        return winterTroupeColour;

      default:
        return springTroupeColour!;
    }
  }
}
