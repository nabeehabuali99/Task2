import 'package:dartz/dartz.dart';
import 'package:task_design2/core/error/failures.dart';
import 'package:task_design2/core/usecases/usecase.dart';
import 'package:task_design2/features/profile/domain/repository/profile_repository.dart';

import '../entities/profile.dart';

class GetAllListOfSearch implements UseCase<List<Profile>, NoParams> {
  final ProfileRepository repository;

  GetAllListOfSearch(this.repository);

  @override
  Future<Either<Failure, List<Profile>>> call(NoParams params) async {
    return await repository.getAllListOfSearch();
  }
}
