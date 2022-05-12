part of 'menu_bloc.dart';

abstract class MenuState extends Equatable {
  const MenuState();
}

class MenuInitial extends MenuState {
  @override
  List<Object> get props => [];
}

class MenuLoading extends MenuState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

//Loaded  Menu
class GetListNamesOfPartsLoaded extends MenuState {
  final List<Menu> menu;

  const GetListNamesOfPartsLoaded({required this.menu});

  @override
  // TODO: implement props
  List<Object?> get props => [menu];
}

class GetListNamesOfSoraLoaded extends MenuState {
  final List<Menu> menu;

  const GetListNamesOfSoraLoaded({required this.menu});

  @override
  // TODO: implement props
  List<Object?> get props => [menu];
}

class GetNameOfSoraBySearchLoaded extends MenuState {
  final List<Menu> menu;

  const GetNameOfSoraBySearchLoaded({required this.menu});

  @override
  // TODO: implement props
  List<Object?> get props => [menu];
}

class GetNameOfPartBySearchLoaded extends MenuState {
  final List<Menu> menu;

  const GetNameOfPartBySearchLoaded({required this.menu});

  @override
  // TODO: implement props
  List<Object?> get props => [menu];
}

class GetNumberOfSoraPageBySearchLoaded extends MenuState {
  const GetNumberOfSoraPageBySearchLoaded();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetSuitablePartLoaded extends MenuState {
  const GetSuitablePartLoaded();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetSuitableSoraLoaded extends MenuState {
  const GetSuitableSoraLoaded();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

//Error Menu
class GetSuitableSoraError extends MenuState {
  final String message;

  const GetSuitableSoraError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetSuitablePartError extends MenuState {
  final String message;

  const GetSuitablePartError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetNumberOfSoraPageBySearchError extends MenuState {
  final String message;

  const GetNumberOfSoraPageBySearchError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetNameOfPartBySearchError extends MenuState {
  final String message;

  const GetNameOfPartBySearchError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetNameOfSoraBySearchError extends MenuState {
  final String message;

  const GetNameOfSoraBySearchError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetListNamesOfPartsError extends MenuState {
  final String message;

  const GetListNamesOfPartsError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetListNamesOfSoraError extends MenuState {
  final String message;

  const GetListNamesOfSoraError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
