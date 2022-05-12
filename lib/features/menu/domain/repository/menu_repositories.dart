  import 'package:dartz/dartz.dart';

  import '../../../../core/error/failures.dart';
  import '../entities/menu.dart';

  abstract class MenuRepository {
    Future<Either<Failure, List<Menu>>> getAllListNameOfParts();

    Future<Either<Failure, List<Menu>>> getAllListNameOfSora();

    Future<Either<Failure, List<Menu>>> getNameOfPartBySearch(String nameOfPart);

    Future<Either<Failure, List<Menu>>> getNameOfSoraBySearch(String nameOfSora);

    Future<Either<Failure, void>> getNumberOfSoraPageBySearch(int numberOfPage);
    Future<Either<Failure, void>> getSuitableSora(int numberOfSora);
    Future<Either<Failure, void>> getSuitablePart(int numberOfPart);
  }
