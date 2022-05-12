part of 'menu_bloc.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();
}

class GetMenuForAllListNameOfParts extends MenuEvent {
  const GetMenuForAllListNameOfParts();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetMenuForAllListNameOfSora extends MenuEvent {
  const GetMenuForAllListNameOfSora();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetMenuForNameOfPartBySearch extends MenuEvent {
  final String nameOfPart;

  const GetMenuForNameOfPartBySearch({required this.nameOfPart});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetMenuForNameOfSoraBySearch extends MenuEvent {
  final String nameOfSora;

  const GetMenuForNameOfSoraBySearch({required this.nameOfSora});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetMenuForNumberOfSoraPageBySearch extends MenuEvent {
  final int numberOfPage;

  const GetMenuForNumberOfSoraPageBySearch({required this.numberOfPage});

  @override
  List<Object?> get props => throw UnimplementedError();
}
class GetMenuForGetSuitablePart extends MenuEvent {
  final int numberOfPart;

  const GetMenuForGetSuitablePart({required this.numberOfPart});

  @override
  List<Object?> get props => throw UnimplementedError();
}class GetMenuForGetSuitableSora extends MenuEvent {
  final int numberOfSora;

  const GetMenuForGetSuitableSora({required this.numberOfSora});

  @override
  List<Object?> get props => throw UnimplementedError();
}