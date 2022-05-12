import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/menu.dart';
import '../../domain/usecases/get_list_names_of_parts.dart';
import '../../domain/usecases/get_list_names_of_sora.dart';
import '../../domain/usecases/get_name_of_part_by_search.dart';
import '../../domain/usecases/get_name_of_sora_by_search.dart';
import '../../domain/usecases/get_number_of_sora_page_by_search.dart';
import '../../domain/usecases/get_suitable_part.dart';
import '../../domain/usecases/get_suitable_sora.dart';

part 'menu_event.dart';

part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final GetAllListNameOfParts getAllListNameOfParts;
  final GetAllListNameOfSora getAllListNameOfSora;
  final GetNameOfPartBySearch getNameOfPartBySearch;
  final GetNameOfSoraBySearch getNameOfSoraBySearch;
  final GetNumberOfSoraPageBySearch getNumberOfSoraPageBySearch;
  final GetSuitablePart getSuitablePart;
  final GetSuitableSora getSuitableSora;

  MenuBloc(
      {required this.getSuitablePart,
      required this.getSuitableSora,
      required this.getAllListNameOfParts,
      required this.getAllListNameOfSora,
      required this.getNameOfPartBySearch,
      required this.getNameOfSoraBySearch,
      required this.getNumberOfSoraPageBySearch})
      : super(MenuInitial());

  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {
    if (event is GetMenuForAllListNameOfParts) {
      yield MenuLoading();
      final result = await getAllListNameOfParts(NoParams());
      yield result.fold(
          (failure) => const GetListNamesOfPartsError(message: "failure"),
          (menu) => GetListNamesOfPartsLoaded(menu: menu));
    } else if (event is GetMenuForAllListNameOfSora) {
      yield MenuLoading();
      final result = await getAllListNameOfSora(NoParams());
      yield result.fold(
          (failure) => const GetListNamesOfSoraError(message: "failure"),
          (menu) => GetListNamesOfSoraLoaded(menu: menu));
    } else if (event is GetMenuForNameOfPartBySearch) {
      yield MenuLoading();
      final result = await getNameOfPartBySearch(
          ParamsForSearchByNameOfPart(nameOfPart: event.nameOfPart));
      yield result.fold(
          (failure) => const GetNameOfPartBySearchError(message: "failure"),
          (menu) => GetNameOfPartBySearchLoaded(menu: menu));
    } else if (event is GetMenuForNameOfSoraBySearch) {
      yield MenuLoading();
      final result = await getNameOfSoraBySearch(
          ParamsForSearchByNameOfSora(nameOfSora: event.nameOfSora));
      yield result.fold(
          (failure) => const GetNameOfSoraBySearchError(message: "failure"),
          (menu) => GetNameOfSoraBySearchLoaded(menu: menu));
    } else if (event is GetMenuForNumberOfSoraPageBySearch) {
      yield MenuLoading();
      final result = await getNumberOfSoraPageBySearch(
          ParamsForSearchByNumberOfSoraPage(numberOfPage: event.numberOfPage));
      yield result.fold(
          (failure) =>
              const GetNumberOfSoraPageBySearchError(message: "failure"),
          (menu) => const GetNumberOfSoraPageBySearchLoaded());
    } else if (event is GetMenuForGetSuitablePart) {
      yield MenuLoading();
      final result = await getSuitablePart(
          ParamsForGetSuitablePart(numberOfPart: event.numberOfPart));
      yield result.fold(
          (failure) => const GetSuitablePartError(message: "failure"),
          (menu) => const GetSuitablePartLoaded());
    } else if (event is GetMenuForGetSuitableSora) {
      yield MenuLoading();
      final result = await getSuitableSora(
          ParamsForGetSuitableSora(numberOfSora: event.numberOfSora));
      yield result.fold(
          (failure) => const GetSuitableSoraError(message: "failure"),
          (menu) => const GetSuitableSoraLoaded());
    }
  }
}
