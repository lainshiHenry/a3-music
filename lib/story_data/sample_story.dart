import 'package:a3_music/data/character_data.dart';
import 'package:a3_music/models/lines.dart';

StoryDetails sampleStoryMetaData = StoryDetails(
  storyTitle: 'Sample Story',
);

List<Line> sampleStoryText = [
  Line(
    talkingCharacterText: 'Hello',
    talkingCharacter: SakuyaSakuma,
    backgroundImage: 'assets/images/song_covers/character_song/azami.png',
  ),
  Line(
    talkingCharacterText: 'How Are you?',
    talkingCharacter: TsumugiTsukioka,
    backgroundImage: 'assets/images/song_covers/character_song/azami.png',
  ),
  Line(
    talkingCharacterText: 'You came, My Lady',
    talkingCharacter: Citron,
    backgroundImage: 'assets/images/song_covers/character_song/guy.png',
  ),
  Line(
    talkingCharacterText: 'Come. Let\'s Chat',
    talkingCharacter: AzumaYukishiro,
    backgroundImage: 'assets/images/song_covers/character_song/citron.png',
  ),
];

class StoryDetails {
  final String _storyTitle;

  StoryDetails({required String storyTitle}) : _storyTitle = storyTitle;

  String get getStoryTitle => _storyTitle;
}
