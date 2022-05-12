import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/profile_repository.dart';

class RemoveOneOfListSearch
    implements UseCase<void, ParamsForRemoveOneOfListOfSearch> {
  final ProfileRepository repository;

  RemoveOneOfListSearch(this.repository);

  @override
  Future<Either<Failure, void>> call(
      ParamsForRemoveOneOfListOfSearch params) async {
    return await repository.removeOneOfListSearch(params.indexOfListSearch);
  }
}

class ParamsForRemoveOneOfListOfSearch extends Equatable {
  final int indexOfListSearch;

  const ParamsForRemoveOneOfListOfSearch({required this.indexOfListSearch});

  @override
  // TODO: implement props
  List<Object?> get props => [indexOfListSearch];
}
