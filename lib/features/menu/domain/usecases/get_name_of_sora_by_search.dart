import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_design2/core/error/failures.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/menu.dart';
import '../repository/menu_repositories.dart';

class GetNameOfSoraBySearch implements UseCase<List<Menu>, ParamsForSearchByNameOfSora> {


   final MenuRepository repository;

   GetNameOfSoraBySearch(this.repository);
  @override
  Future<Either<Failure, List<Menu>>> call(ParamsForSearchByNameOfSora params) async {
     return await repository.getNameOfSoraBySearch(params.nameOfSora);
  }
}

class ParamsForSearchByNameOfSora extends Equatable {
  final String nameOfSora;

  const ParamsForSearchByNameOfSora({required this.nameOfSora});

  @override
  // TODO: implement props
  List<Object?> get props => [nameOfSora];
}
