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
      case Troupe.spring:
        return springTroupeColour!;

      case Troupe.summer:
        return summerTroupeColour!;

      case Troupe.autumn:
        return autumnTroupeColour;

      case Troupe.winter:
        return winterTroupeColour;

      default:
        return springTroupeColour!;
    }
  }
}
