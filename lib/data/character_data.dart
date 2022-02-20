import 'package:a3_music/models/character.dart';

List<Character> characterList = List.empty(growable: true);

List<Character> springTroupe = [
  Character(
    actor: Actor.sakuya,
    firstName: 'Sakuya',
    lastName: 'Sakuma',
    assetImageLocation: 'assets/images/characters/faces/sakuya.png',
    troupe: Troupe.spring,
    glitterAssetImageLocation:
        'assets/images/characters/glitter/sakuya_glitter.png',
    chibiAssetImageLocation: 'assets/images/characters/chibi/sakuya_chibi.png',
    fullBodyAssetImageLocation: 'assets/images/characters/fullbody/sakuya.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Spring/Sakuya.png',
  ),
  Character(
    actor: Actor.masumi,
    firstName: 'Masumi',
    lastName: 'Usui',
    assetImageLocation: 'assets/images/characters/faces/masumi.png',
    troupe: Troupe.spring,
    glitterAssetImageLocation:
        'assets/images/characters/glitter/masumi_glitter.png',
    chibiAssetImageLocation: 'assets/images/characters/chibi/masumi_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Spring/Masumi.png',
  ),
  Character(
    actor: Actor.tsuzuru,
    firstName: 'Tsuzuru',
    lastName: 'Minagi',
    assetImageLocation: 'assets/images/characters/faces/tsuzuru.png',
    troupe: Troupe.spring,
    glitterAssetImageLocation:
        'assets/images/characters/glitter/tsuzuru_glitter.png',
    chibiAssetImageLocation: 'assets/images/characters/chibi/tsuzuru_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Spring/Tsuzuru.png',
  ),
  Character(
    actor: Actor.itaru,
    firstName: 'Itaru',
    lastName: 'Chigasaki',
    assetImageLocation: 'assets/images/characters/faces/itaru.png',
    troupe: Troupe.spring,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/itaru_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Spring/Itaru.png',
  ),
  Character(
    actor: Actor.citron,
    firstName: 'Citron',
    lastName: '',
    assetImageLocation: 'assets/images/characters/faces/citron.png',
    troupe: Troupe.spring,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/citron_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Spring/Citron.png',
  ),
  Character(
    actor: Actor.chikage,
    firstName: 'Chikage',
    lastName: 'Utsuki',
    assetImageLocation: 'assets/images/characters/faces/chikage.png',
    troupe: Troupe.spring,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/chikage_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Spring/Chikage.png',
  ),
];

List<Character> summerTroupe = [
  Character(
    actor: Actor.tenma,
    firstName: 'Tenma',
    lastName: 'Sumeragi',
    assetImageLocation: 'assets/images/characters/faces/tenma.png',
    troupe: Troupe.summer,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/tenma_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Summer/Tenma.png',
  ),
  Character(
    actor: Actor.yuki,
    firstName: 'Yuki',
    lastName: 'Rurikawa',
    assetImageLocation: 'assets/images/characters/faces/yuki.png',
    troupe: Troupe.summer,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/yuki_chibi.png',
    characterSelectionImageLocation: 'assets/images/app_images/Summer/Yuki.png',
  ),
  Character(
    actor: Actor.muku,
    firstName: 'Muku',
    lastName: 'Sakisaka',
    assetImageLocation: 'assets/images/characters/faces/muku.png',
    troupe: Troupe.summer,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/muku_chibi.png',
    characterSelectionImageLocation: 'assets/images/app_images/Summer/Muku.png',
  ),
  Character(
    actor: Actor.misumi,
    firstName: 'Misumi',
    lastName: 'Ikaruga',
    assetImageLocation: 'assets/images/characters/faces/misumi.png',
    troupe: Troupe.summer,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/misumi_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Summer/Misumi.png',
  ),
  Character(
    actor: Actor.kazunari,
    firstName: 'Kazunari',
    lastName: 'Miyoshi',
    assetImageLocation: 'assets/images/characters/faces/kazunari.png',
    troupe: Troupe.summer,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation:
        'assets/images/characters/chibi/kazunari_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Summer/Kazunari.png',
  ),
  Character(
    actor: Actor.kumon,
    firstName: 'Kumon',
    lastName: 'Hyodo',
    assetImageLocation: 'assets/images/characters/faces/kumon.png',
    troupe: Troupe.summer,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/kumon_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Summer/Kumon.png',
  ),
];

List<Character> autumnTroupe = [
  Character(
    actor: Actor.banri,
    firstName: 'Banri',
    lastName: 'Settsu',
    assetImageLocation: 'assets/images/characters/faces/banri.png',
    troupe: Troupe.autumn,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/banri_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Autumn/Banri.png',
  ),
  Character(
    actor: Actor.juza,
    firstName: 'Juza',
    lastName: 'Hyodo',
    assetImageLocation: 'assets/images/characters/faces/juza.png',
    troupe: Troupe.autumn,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/juza_chibi.png',
    characterSelectionImageLocation: 'assets/images/app_images/Autumn/Juza.png',
  ),
  Character(
    actor: Actor.taichi,
    firstName: 'Taichi',
    lastName: 'Nanao',
    assetImageLocation: 'assets/images/characters/faces/taichi.png',
    troupe: Troupe.autumn,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/taichi_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Autumn/Taichi.png',
  ),
  Character(
    actor: Actor.omi,
    firstName: 'Omi',
    lastName: 'Fushimi',
    assetImageLocation: 'assets/images/characters/faces/omi.png',
    troupe: Troupe.autumn,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/omi_chibi.png',
    characterSelectionImageLocation: 'assets/images/app_images/Autumn/Omi.png',
  ),
  Character(
    actor: Actor.sakyo,
    firstName: 'Sakyo',
    lastName: 'Furuichi',
    assetImageLocation: 'assets/images/characters/faces/sakyo.png',
    troupe: Troupe.autumn,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/sakyo_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Autumn/Sakyo.png',
  ),
  Character(
    actor: Actor.azami,
    firstName: 'Azami',
    lastName: 'Izumida',
    assetImageLocation: 'assets/images/characters/faces/azami.png',
    troupe: Troupe.autumn,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/azami_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Autumn/Azami.png',
  ),
];
List<Character> winterTroupe = [
  Character(
    actor: Actor.tsumugi,
    firstName: 'Tsumugi',
    lastName: 'Tsukioka',
    assetImageLocation: 'assets/images/characters/faces/tsumugi.png',
    glitterAssetImageLocation:
        'assets/images/characters/glitter/tsumugi_glitter.png',
    troupe: Troupe.winter,
    chibiAssetImageLocation: 'assets/images/characters/chibi/tsumugi_chibi.png',
    fullBodyAssetImageLocation: 'assets/images/characters/fullbody/tsumugi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Winter/Tsumugi.png',
  ),
  Character(
    actor: Actor.tasuku,
    firstName: 'Tasuku',
    lastName: 'Takato',
    assetImageLocation: 'assets/images/characters/faces/tasuku.png',
    troupe: Troupe.winter,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/tasuku_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Winter/Tasuku.png',
  ),
  Character(
    actor: Actor.hisoka,
    firstName: 'Hisoka',
    lastName: 'Mikage',
    assetImageLocation: 'assets/images/characters/faces/hisoka.png',
    troupe: Troupe.winter,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/hisoka_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Winter/Hisoka.png',
  ),
  Character(
    actor: Actor.homare,
    firstName: 'Homare',
    lastName: 'Arisugawa',
    assetImageLocation: 'assets/images/characters/faces/homare.png',
    troupe: Troupe.winter,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/homare_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Winter/Homare.png',
  ),
  Character(
    actor: Actor.azuma,
    firstName: 'Azuma',
    lastName: 'Yukishiro',
    assetImageLocation: 'assets/images/characters/faces/azuma.png',
    troupe: Troupe.winter,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/azuma_chibi.png',
    characterSelectionImageLocation:
        'assets/images/app_images/Winter/Azuma.png',
  ),
  Character(
    actor: Actor.guy,
    firstName: 'Guy',
    lastName: '',
    assetImageLocation: 'assets/images/characters/faces/guy.png',
    troupe: Troupe.winter,
    glitterAssetImageLocation: '',
    chibiAssetImageLocation: 'assets/images/characters/chibi/guy_chibi.png',
    characterSelectionImageLocation: 'assets/images/app_images/Winter/Guy.png',
  ),
];
