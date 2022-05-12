import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

import '../repository/profile_repository.dart';

class RemoveOneOfListAya
    implements UseCase<void, ParamsForRemoveOneOfListOfAya> {
  final ProfileRepository repository;

  RemoveOneOfListAya(this.repository);

  @override
  Future<Either<Failure, void>> call(
      ParamsForRemoveOneOfListOfAya params) async {
    return await repository.removeOneOfListAya(params.indexOfListAya);
  }
}

class ParamsForRemoveOneOfListOfAya extends Equatable {
  final int indexOfListAya;

  const ParamsForRemoveOneOfListOfAya({required this.indexOfListAya});

  @override
  // TODO: implement props
  List<Object?> get props => [indexOfListAya];
}
