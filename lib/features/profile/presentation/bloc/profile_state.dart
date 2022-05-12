part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class ProfileInitial extends ProfileState {
  @override
  List<Object> get props => [];
}

class ProfileLoading extends ProfileState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
// Loaded State
class AddNewListAyaLoaded extends ProfileState {
  const AddNewListAyaLoaded();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddNewListSearchLoaded extends ProfileState {
  const AddNewListSearchLoaded();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class GetAllListAyaLoaded extends ProfileState {
  final List<Profile>  profile;
  const GetAllListAyaLoaded( {required this.profile});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetAllListSearchLoaded extends ProfileState {
  final List<Profile>  profile;
  const GetAllListSearchLoaded( {required this.profile});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class RemoveOneListAyaLoaded extends ProfileState {

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class RemoveOneListSearchLoaded extends ProfileState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}








// Error State
class AddNewListAyaError extends ProfileState {
  final String message;

  const AddNewListAyaError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class AddNewListSearchError extends ProfileState {
  final String message;

  const AddNewListSearchError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class GetAllListAyaError extends ProfileState {
  final String message;

  const GetAllListAyaError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
class GetAllListSearchError extends ProfileState {
  final String message;

  const GetAllListSearchError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
class RemoveOneListAyaError extends ProfileState {
  final String message;

  const RemoveOneListAyaError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
class RemoveOneListSearchError extends ProfileState {
  final String message;

  const RemoveOneListSearchError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}