  import 'package:dartz/dartz.dart';

  import '../../../../core/error/failures.dart';
  import '../entities/menu.dart';

  abstract class MenuRepository {
    Future<Either<Failure, List<Menu>>> getAllListNameOfParts();

    Future<Either<Failure, List<Menu>>> getAllListNameOfSora();

    Future<Either<Failure, List<Menu>>> getNameOfPartBySearch(String nameOfPart);

    Future<Either<Failure, List<Menu>>> getNameOfSoraBySearch(String nameOfSora);

    Future<Either<Failure, Menu>> getNumberOfSoraPageBySearch(int numberOfPage);
  }
