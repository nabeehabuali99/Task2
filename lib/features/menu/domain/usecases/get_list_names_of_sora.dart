import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/menu.dart';
import '../repository/menu_repositories.dart';

class GetAllListNameOfSora extends UseCase<List<Menu>, NoParams> {
  final MenuRepository repository;

  GetAllListNameOfSora(this.repository);

  @override
  Future<Either<Failure, List<Menu>>> call(NoParams params) async {
    return await repository.getAllListNameOfSora();
  }
}
