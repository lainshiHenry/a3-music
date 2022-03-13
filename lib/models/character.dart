enum Troupe {
  spring,
  summer,
  autumn,
  winter,
  other,
}

enum Actor {
  sakuya,
  masumi,
  tsuzuru,
  itaru,
  citron,
  chikage,
  tenma,
  yuki,
  muku,
  misumi,
  kazunari,
  kumon,
  banri,
  juza,
  taichi,
  omi,
  sakyo,
  azami,
  tsumugi,
  tasuku,
  hisoka,
  homare,
  azuma,
  guy,
  izumi,
  none,
}

class Character {
  final String? firstName;
  final String? lastName;
  final String? assetImageLocation;
  final String? glitterAssetImageLocation;
  final String? chibiAssetImageLocation;
  final String? fullBodyAssetImageLocation;
  final String? characterSelectionImageLocation;
  final Troupe troupe;
  final Actor? actor;

  const Character({
    this.firstName = '',
    this.lastName = '',
    this.assetImageLocation = '',
    this.glitterAssetImageLocation = '',
    this.chibiAssetImageLocation = '',
    this.fullBodyAssetImageLocation = '',
    this.characterSelectionImageLocation = '',
    this.troupe = Troupe.other,
    this.actor = Actor.none,
  });
}
