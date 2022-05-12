
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
 import '../repository/profile_repository.dart';

class AddNewOneListOfAya
    implements UseCase<void, ParamsForAddNewOneListOfAya> {
  final ProfileRepository repository;

  AddNewOneListOfAya(this.repository);

  @override
  Future<Either<Failure, void>> call(
      ParamsForAddNewOneListOfAya params) async {
    return await repository.addNewOneListOfAya(params.nameOfListAya);
  }
}

class ParamsForAddNewOneListOfAya extends Equatable {
  final String nameOfListAya;

  const ParamsForAddNewOneListOfAya({required this.nameOfListAya});

  @override
  // TODO: implement props
  List<Object?> get props => [nameOfListAya];
}
