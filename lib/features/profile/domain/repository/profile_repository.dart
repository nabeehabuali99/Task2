import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/profile.dart';

abstract class ProfileRepository {
  Future<Either<Failure, void>> removeOneOfListSearch(int indexOfListSearch);

  Future<Either<Failure, void>> removeOneOfListAya(int indexOfListAya);

  Future<Either<Failure, Profile>> addNewOneListOfAya(String nameOfList);

  Future<Either<Failure, Profile>> addNewOneListOfSearch(String nameOfSearch);

  Future<Either<Failure, List<Profile>>> getAllListOfSearch();

  Future<Either<Failure, List<Profile>>> getAllListOfAya();
}
