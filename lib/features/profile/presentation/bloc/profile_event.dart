part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class GetProfileForRemoveOneOfListSearch extends ProfileEvent {
  final int indexOfListSearch;

  const GetProfileForRemoveOneOfListSearch(this.indexOfListSearch);

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetProfileForRemoveOneOfListAya extends ProfileEvent {
  final int indexOfListAya;

  const GetProfileForRemoveOneOfListAya(this.indexOfListAya);

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetProfileForAddNewOneListOfAya extends ProfileEvent {
  final String nameOfList;

  const GetProfileForAddNewOneListOfAya(this.nameOfList);

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetProfileForAddNewOneListOfSearch extends ProfileEvent {
  final String nameOfSearch;

  const GetProfileForAddNewOneListOfSearch(this.nameOfSearch);

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetProfileForGetAllListOfSearch extends ProfileEvent {
  const GetProfileForGetAllListOfSearch();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetProfileForGetAllListOfAya extends ProfileEvent {
  const GetProfileForGetAllListOfAya();

  @override
  List<Object?> get props => throw UnimplementedError();
}
