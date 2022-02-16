import 'package:a3_music/models/character.dart';

String fromActorToString(Actor actor) {
  switch (actor) {
    case Actor.sakuya:
      return 'Sakuya';
    default:
      return '';
  }
}

Actor fromStringToActor(String actorString) {
  switch (actorString.toLowerCase()) {
    case 'sakuya':
      return Actor.sakuya;
    case 'masumi':
      return Actor.masumi;
    default:
      return Actor.sakuya;
  }
}
