import 'package:a3_music/models/character.dart';
import 'package:a3_music/models/lines.dart';
import 'package:flutter/material.dart';

class StoryConversationScreen extends StatefulWidget {
  final List<Line> _storyLine;

  const StoryConversationScreen({
    Key? key,
    required List<Line> storyLine,
  })  : _storyLine = storyLine,
        super(key: key);

  @override
  State<StoryConversationScreen> createState() =>
      _StoryConversationScreenState();
}

class _StoryConversationScreenState extends State<StoryConversationScreen> {
  int _currentStoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('Left: ' +
        widget._storyLine[_currentStoryIndex].leftTalkingCharacter.actor
            .toString());
    print('Center: ' +
        widget._storyLine[_currentStoryIndex].centerTalkingCharacter.actor
            .toString());
    print('Right: ' +
        widget._storyLine[_currentStoryIndex].rightTalkingCharacter.actor
            .toString());
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                widget._storyLine[_currentStoryIndex].backgroundImage),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (_currentStoryIndex != widget._storyLine.length - 1) {
                _currentStoryIndex++;
              } else {
                Navigator.pop(context);
              }
            });
          },
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    widget._storyLine[_currentStoryIndex].leftTalkingCharacter
                                .actor ==
                            Actor.none
                        ? const SizedBox(
                            width: 200,
                          )
                        : SizedBox(
                            width: 200,
                            child: StoryCharacterImage(
                              assetImageLocation: widget
                                  ._storyLine[_currentStoryIndex]
                                  .leftTalkingCharacter
                                  .fullBodyAssetImageLocation!,
                            ),
                          ),
                    const Spacer(
                      flex: 1,
                    ),
                    widget._storyLine[_currentStoryIndex].centerTalkingCharacter
                                .actor ==
                            Actor.none
                        ? const SizedBox(
                            width: 200,
                          )
                        : SizedBox(
                            width: 200,
                            child: StoryCharacterImage(
                              assetImageLocation: widget
                                  ._storyLine[_currentStoryIndex]
                                  .centerTalkingCharacter
                                  .fullBodyAssetImageLocation!,
                            ),
                          ),
                    const Spacer(
                      flex: 1,
                    ),
                    widget._storyLine[_currentStoryIndex].rightTalkingCharacter
                                .actor ==
                            Actor.none
                        ? const SizedBox(
                            width: 200,
                          )
                        : SizedBox(
                            child: StoryCharacterImage(
                              assetImageLocation: widget
                                  ._storyLine[_currentStoryIndex]
                                  .rightTalkingCharacter
                                  .fullBodyAssetImageLocation!,
                            ),
                          ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  BottomStoryTextBlock(
                    talkingCharacterName: widget._storyLine[_currentStoryIndex]
                        .talkingCharacter.firstName,
                    talkingCharacterText: widget
                        ._storyLine[_currentStoryIndex].talkingCharacterText,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoryCharacterImage extends StatelessWidget {
  const StoryCharacterImage({
    Key? key,
    required String? assetImageLocation,
  })  : _assetImageLocation = assetImageLocation,
        super(key: key);

  final String? _assetImageLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      // width: 300,
      child: Image.asset(
        _assetImageLocation!,
        alignment: Alignment.topCenter,
        width: 200,
        //height: 600,
        fit: BoxFit.cover,
      ),
    );
  }
}

class BottomStoryTextBlock extends StatelessWidget {
  const BottomStoryTextBlock({
    Key? key,
    required String? talkingCharacterName,
    required String? talkingCharacterText,
  })  : _talkingCharacterName = talkingCharacterName,
        _talkingCharacterText = talkingCharacterText,
        super(key: key);

  final String? _talkingCharacterName;
  final String? _talkingCharacterText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              color: Colors.grey,
              width: 100,
              height: 24,
              child: Text(
                _talkingCharacterName!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              color: Colors.grey[200],
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  _talkingCharacterText!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
