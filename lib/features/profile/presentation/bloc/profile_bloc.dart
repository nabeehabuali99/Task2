import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/profile.dart';
import '../../domain/usecases/add_new_one_list_of_aya.dart';
import '../../domain/usecases/add_new_one_list_of_search.dart';
import '../../domain/usecases/get_all_list_of_aya.dart';
import '../../domain/usecases/get_all_list_of_search.dart';
import '../../domain/usecases/remove_one_of_list_aya.dart';
import '../../domain/usecases/remove_one_of_list_search.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AddNewOneListOfAya addNewOneListOfAya;
  final AddNewOneListOfSearch addNewOneListOfSearch;
  final GetAllListOfAya getAllListOfAya;
  final GetAllListOfSearch getAllListOfSearch;
  final RemoveOneOfListAya removeOneOfListAya;
  final RemoveOneOfListSearch removeOneOfListSearch;

  ProfileBloc(
      {required this.addNewOneListOfAya, required this.addNewOneListOfSearch, required this.getAllListOfAya,
        required this.getAllListOfSearch, required this.removeOneOfListAya, required this.removeOneOfListSearch})
      : super(ProfileInitial());


  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is GetProfileForRemoveOneOfListSearch) {
      yield ProfileLoading();
      final result = await removeOneOfListSearch(
          ParamsForRemoveOneOfListOfSearch(
              indexOfListSearch: event.indexOfListSearch));
      yield result.fold((failure) =>
      const RemoveOneListSearchError(message: "failure"),
              (profile) => RemoveOneListSearchLoaded());
    } else if (event is GetProfileForRemoveOneOfListAya) {
      yield ProfileLoading();
      final result = await removeOneOfListAya(
          ParamsForRemoveOneOfListOfAya(indexOfListAya: event.indexOfListAya));
      yield result.fold((failure) =>
      const RemoveOneListAyaError(message: "failure"),
              (profile) => RemoveOneListAyaLoaded());
    } else if (event is GetProfileForAddNewOneListOfAya) {
      yield ProfileLoading();
      final result = await addNewOneListOfAya(
          ParamsForAddNewOneListOfAya(nameOfListAya: event.nameOfList));
      yield result.fold((failure) =>
      const AddNewListAyaError(message: "failure"),
              (profile) => const AddNewListAyaLoaded());
    } else if (event is GetProfileForAddNewOneListOfSearch) {
      yield ProfileLoading();
      final result = await addNewOneListOfSearch(
          ParamsForAddNewOneListOfSearch(nameOfListSearch: event.nameOfSearch));
      yield result.fold((failure) =>
      const AddNewListSearchError(message: "failure"),
              (profile) => const AddNewListSearchLoaded());
    } else if (event is GetProfileForGetAllListOfSearch) {
      yield ProfileLoading();
      final result = await getAllListOfSearch(
          NoParams());
      yield result.fold((failure) =>
      const GetAllListSearchError(message: "failure"),
              (profile) => GetAllListSearchLoaded(profile: profile));
    } else if (event is GetProfileForGetAllListOfAya) {
      yield ProfileLoading();
      final result = await getAllListOfAya(NoParams());
      yield result.fold((failure) =>
      const GetAllListAyaError(message: "failure"),
              (profile) => GetAllListAyaLoaded(profile: profile));
    }
  }

}