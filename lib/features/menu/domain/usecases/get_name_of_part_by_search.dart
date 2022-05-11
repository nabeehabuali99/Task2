import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/menu.dart';
import '../repository/menu_repositories.dart';

class GetNameOfPartBySearch
    implements UseCase<List<Menu>, ParamsForSearchByNameOfPart> {
  final MenuRepository repository;

  GetNameOfPartBySearch(this.repository);

  @override
  Future<Either<Failure, List<Menu>>> call(
      ParamsForSearchByNameOfPart params) async {
    return await repository.getNameOfPartBySearch(params.nameOfPart);
  }
}

class ParamsForSearchByNameOfPart extends Equatable {
  final String nameOfPart;

  const ParamsForSearchByNameOfPart({required this.nameOfPart});

  @override
  // TODO: implement props
  List<Object?> get props => [nameOfPart];
}
