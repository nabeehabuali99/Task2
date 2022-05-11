import '../../domain/entities/menu.dart';

class MenuModel extends Menu {
  const MenuModel(
      {required String nameOfSora,
      required String nameOfPart,
      required int numberOfPart,
      required int numberOfSora})
      : super(
            nameOfSora: nameOfSora,
            nameOfPart: nameOfPart,
            numberOfPart: numberOfPart,
            numberOfSora: numberOfSora);

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
        nameOfSora: json["nameOfSora"],
        nameOfPart: json["nameOfPart"],
        numberOfPart: json["numberOfPart"],
        numberOfSora: json["numberOfSora"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'partOfSora': nameOfPart,
      'numberOfPart': numberOfPart,
      'numberOfSora': numberOfSora
    };
  }
}
