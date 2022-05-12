import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/profile.dart';
import '../repository/profile_repository.dart';

class AddNewOneListOfSearch
    implements UseCase<void, ParamsForAddNewOneListOfSearch> {
  final ProfileRepository repository;

  AddNewOneListOfSearch(this.repository);

  @override
  Future<Either<Failure, void>> call(
      ParamsForAddNewOneListOfSearch params) async {
    return await repository.addNewOneListOfSearch(params.nameOfListSearch);
  }
}

class ParamsForAddNewOneListOfSearch extends Equatable {
  final String nameOfListSearch;

  const ParamsForAddNewOneListOfSearch({required this.nameOfListSearch});

  @override
  // TODO: implement props
  List<Object?> get props => [nameOfListSearch];
}
