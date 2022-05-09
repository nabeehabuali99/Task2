import '../../domin/entities/home_entities.dart';

class HomeModel extends Home {
  const HomeModel(
      {required String nameOfSora,
      required String partOfSora,
      required String numberOfPage,
      required String imageOfSora})
      : super(
            nameOfSora: nameOfSora,
            partOfSora: partOfSora,
            numberOfPage: numberOfPage,
            imageOfSora: imageOfSora);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
        nameOfSora: json["nameOfSora"],
        partOfSora: json["partOfSora"],
        numberOfPage: json["numberOfPage"],
        imageOfSora: json["imageOfSora"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'partOfSora': partOfSora,
      'numberOfPage': numberOfPage,
      'imageOfSora': imageOfSora
    };
  }
}
