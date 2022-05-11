import '../../domain/entities/profile.dart';

class ProfileModel extends Profile {
  const ProfileModel(
      {required String nameOfSearchList, required String nameOfList})
      : super(nameOfSearchList: nameOfSearchList, nameOfList: nameOfList);

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
        nameOfSearchList: json["nameOfSearchList"],
        nameOfList: json["nameOfList"]);
  }

  Map<String, dynamic> toJson() {
    return {'nameOfSearchList': nameOfSearchList, 'nameOfList': nameOfList};
  }
}
