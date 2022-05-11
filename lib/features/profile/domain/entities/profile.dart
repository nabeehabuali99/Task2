import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final String nameOfSearchList;
  final String nameOfList;

  const Profile({required this.nameOfSearchList, required this.nameOfList});

  @override
  // TODO: implement props
  List<Object?> get props => [nameOfSearchList,nameOfList];
}
