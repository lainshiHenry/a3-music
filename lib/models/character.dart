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
}

class Character {
  String? firstName;
  String? lastName;
  String? assetImageLocation;
  String? glitterAssetImageLocation;
  String? chibiAssetImageLocation;
  String? troupe;
  Actor? actor;

  Character({
    this.firstName = '',
    this.lastName = '',
    this.assetImageLocation = '',
    this.glitterAssetImageLocation = '',
    this.chibiAssetImageLocation = '',
    this.troupe = '',
    this.actor,
  });
}
