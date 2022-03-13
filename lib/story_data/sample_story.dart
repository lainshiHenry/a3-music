import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/models/lines.dart';

StoryDetails sampleStoryMetaData = StoryDetails(
  storyTitle: 'Sample Story',
);

List<Line> sampleStoryText = [
  Line(
    talkingCharacterText: 'Hello',
    leftTalkingCharacter: SakuyaSakuma,
    talkingCharacter: SakuyaSakuma,
    backgroundImage: 'assets/images/background_images/dorm_main_floor.jpg',
    characterPosition: CharacterPosition.center,
  ),
  Line(
    talkingCharacterText: 'How Are you?',
    leftTalkingCharacter: SakuyaSakuma,
    rightTalkingCharacter: TsumugiTsukioka,
    talkingCharacter: TsumugiTsukioka,
    backgroundImage: 'assets/images/background_images/dorm_main_floor.jpg',
    characterPosition: CharacterPosition.center,
  ),
  Line(
    talkingCharacterText: 'You came, My Lady',
    centerTalkingCharacter: Citron,
    leftTalkingCharacter: SakuyaSakuma,
    rightTalkingCharacter: TsumugiTsukioka,
    talkingCharacter: Citron,
    backgroundImage: 'assets/images/background_images/veld_street.jpg',
    characterPosition: CharacterPosition.center,
  ),
  Line(
    talkingCharacterText: 'Come. Let\'s Chat',
    centerTalkingCharacter: Citron,
    talkingCharacter: Citron,
    backgroundImage: 'assets/images/background_images/mankai_theatre_front.jpg',
    characterPosition: CharacterPosition.center,
  ),
];

class StoryDetails {
  final String _storyTitle;

  StoryDetails({required String storyTitle}) : _storyTitle = storyTitle;

  String get getStoryTitle => _storyTitle;
}
