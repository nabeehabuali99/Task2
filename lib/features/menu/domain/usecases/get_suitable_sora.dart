import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/menu_repositories.dart';

class GetSuitableSora implements UseCase<void, ParamsForGetSuitableSora> {
  final MenuRepository repository;

  GetSuitableSora(this.repository);

  @override
  Future<Either<Failure, void>> call(ParamsForGetSuitableSora params) async {
    return await repository.getNumberOfSoraPageBySearch(params.numberOfSora);
  }
}

class ParamsForGetSuitableSora extends Equatable {
  final int numberOfSora;

  const ParamsForGetSuitableSora({required this.numberOfSora});

  @override
  // TODO: implement props
  List<Object?> get props => [numberOfSora];
}
