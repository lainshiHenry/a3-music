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
}

class Character {
  String? firstName;
  String? lastName;
  String? assetImageLocation;
  String? glitterAssetImageLocation;
  String? chibiAssetImageLocation;
  String? fullBodyAssetImageLocation;
  String? characterSelectionImageLocation;
  Troupe troupe;
  Actor? actor;

  Character({
    this.firstName = '',
    this.lastName = '',
    this.assetImageLocation = '',
    this.glitterAssetImageLocation = '',
    this.chibiAssetImageLocation = '',
    this.fullBodyAssetImageLocation = '',
    this.characterSelectionImageLocation = '',
    this.troupe = Troupe.other,
    this.actor,
  });
}
