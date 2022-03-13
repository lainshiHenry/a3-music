import 'package:a3_music/models/character.dart';

class Line {
  Character leftTalkingCharacter;
  Character rightTalkingCharacter;
  Character centerTalkingCharacter;
  Character talkingCharacter;
  String talkingCharacterText;
  String backgroundImage;
  CharacterPosition characterPosition;

  Line({
    this.talkingCharacterText = '',
    this.centerTalkingCharacter = const Character(),
    this.backgroundImage = '',
    required this.talkingCharacter,
    this.leftTalkingCharacter = const Character(),
    this.rightTalkingCharacter = const Character(),
    this.characterPosition = CharacterPosition.center,
  });
}

enum CharacterPosition {
  left,
  center,
  right,
}
