import 'package:a3_music/models/character.dart';

class Line {
  Character talkingCharacter;
  String talkingCharacterText;
  String backgroundImage;
  CharacterPosition characterPosition;

  Line({
    required this.talkingCharacterText,
    required this.talkingCharacter,
    required this.backgroundImage,
    required this.characterPosition,
  });
}

enum CharacterPosition {
  left,
  center,
  right,
}
