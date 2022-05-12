import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/menu.dart';
import '../repository/menu_repositories.dart';

class GetNumberOfSoraPageBySearch implements UseCase<void, ParamsForSearchByNumberOfSoraPage> {
   final MenuRepository repository;

   GetNumberOfSoraPageBySearch(this.repository);
  @override
  Future<Either<Failure, void>> call(ParamsForSearchByNumberOfSoraPage params) async {
     return await repository.getNumberOfSoraPageBySearch(params.numberOfPage);
  }
}

class ParamsForSearchByNumberOfSoraPage extends Equatable {
  final int numberOfPage;

  const ParamsForSearchByNumberOfSoraPage({required this.numberOfPage});

  @override
  // TODO: implement props
  List<Object?> get props => [numberOfPage];
}
