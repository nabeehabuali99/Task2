import 'package:dartz/dartz.dart';

import 'package:task_design2/core/error/failures.dart';

import 'package:task_design2/features/profile/domain/entities/profile.dart';

import '../../domain/repository/profile_repository.dart';

class ProfileRepositoryImplementation extends ProfileRepository{
  @override
  Future<Either<Failure, Profile>> addNewOneListOfAya(String nameOfList) {
    // TODO: implement addNewOneListOfAya
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Profile>> addNewOneListOfSearch(String nameOfSearch) {
    // TODO: implement addNewOneListOfSearch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Profile>>> getAllListOfAya() {
    // TODO: implement getAllListOfAya
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Profile>>> getAllListOfSearch() {
    // TODO: implement getAllListOfSearch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> removeOneOfListAya(int indexOfListAya) {
    // TODO: implement removeOneOfListAya
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> removeOneOfListSearch(int indexOfListSearch) {
    // TODO: implement removeOneOfListSearch
    throw UnimplementedError();
  }



}