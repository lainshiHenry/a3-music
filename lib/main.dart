import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/lines.dart';
import 'package:a3_music/models/song_list_model.dart';
import 'package:a3_music/screens/character_screen.dart';
import 'package:a3_music/screens/character_screen_2.dart';
import 'package:a3_music/screens/story/story_conversation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(
    ChangeNotifierProvider(
      create: (context) => SongListModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A3 Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'HomeScreen2',
      // initialRoute: 'StoryConversationScreen',
      routes: {
        '/': (context) => const HomeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        'HomeScreen2': (context) => const HomeScreen2(),
        'StoryConversationScreen': (context) => StoryConversationScreen(
              storyLine: [
                Line(
                  talkingCharacterName: 'Sakuya',
                  talkingCharacterText: 'Hello',
                  talkingCharacter: Character(
                    actor: Actor.sakuya,
                    firstName: 'Sakuya',
                    lastName: 'Sakuma',
                    assetImageLocation:
                        'assets/images/characters/faces/sakuya.png',
                    troupe: Troupe.spring,
                    glitterAssetImageLocation:
                        'assets/images/characters/glitter/sakuya_glitter.png',
                    chibiAssetImageLocation:
                        'assets/images/characters/chibi/sakuya_chibi.png',
                    fullBodyAssetImageLocation:
                        'assets/images/characters/fullbody/sakuya.png',
                  ),
                ),
                Line(
                  talkingCharacterName: 'Tsumugi',
                  talkingCharacterText: 'How Are you?',
                  talkingCharacter: Character(
                    actor: Actor.tsumugi,
                    firstName: 'Tsumugi',
                    lastName: 'Tsukioka',
                    assetImageLocation:
                        'assets/images/characters/faces/tsumugi.png',
                    glitterAssetImageLocation:
                        'assets/images/characters/glitter/tsumugi_glitter.png',
                    troupe: Troupe.winter,
                    chibiAssetImageLocation:
                        'assets/images/characters/chibi/tsumugi_chibi.png',
                    fullBodyAssetImageLocation:
                        'assets/images/characters/fullbody/tsumugi.png',
                  ),
                ),
              ],
            ),
        // SongsListScreen.id: (context) => const SongsListScreen(),
      },
    );
  }
}
