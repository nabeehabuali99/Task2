import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/menu_repositories.dart';

class GetSuitablePart implements UseCase<void, ParamsForGetSuitablePart> {
  final MenuRepository repository;

  GetSuitablePart(this.repository);

  @override
  Future<Either<Failure, void>> call(ParamsForGetSuitablePart params) async {
    return await repository.getNumberOfSoraPageBySearch(params.numberOfPart);
  }
}

class ParamsForGetSuitablePart extends Equatable {
  final int numberOfPart;

  const ParamsForGetSuitablePart({required this.numberOfPart});

  @override
  // TODO: implement props
  List<Object?> get props => [numberOfPart];
}
