import 'package:dartz/dartz.dart';

import 'package:task_design2/core/error/failures.dart';

import 'package:task_design2/features/profile/domain/entities/profile.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/profile_repository.dart';
import '../data_source/profile_local_data_soure.dart';
import '../data_source/profile_remote_data_source.dart';

class ProfileRepositoryImplementation extends ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;
  final ProfileLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ProfileRepositoryImplementation(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, void>> addNewOneListOfAya(String nameOfList) async {
    return await getVoidResult(
        localDataSource.addNewOneListOfAyaLocal(nameOfList));
  }

  @override
  Future<Either<Failure, void>> addNewOneListOfSearch(
      String nameOfSearch) async {
    return await getVoidResult(
        localDataSource.addNewOneListOfSearchLocal(nameOfSearch));
  }

  @override
  Future<Either<Failure, List<Profile>>> getAllListOfAya() async {
    return await getListModelResult(
        localDataSource.getAllListOfAyaLocal());
  }

  @override
  Future<Either<Failure, List<Profile>>> getAllListOfSearch() async {
    return await getListModelResult(
        localDataSource.getAllListOfSearchLocal());
  }

  @override
  Future<Either<Failure, void>> removeOneOfListAya(int indexOfListAya) async {
    return await getVoidResult(
        localDataSource.removeOneOfListAyaLocal(indexOfListAya));
  }

  @override
  Future<Either<Failure, void>> removeOneOfListSearch(
      int indexOfListSearch) async {
    return await getVoidResult(
        localDataSource.removeOneOfListSearchLocal(indexOfListSearch));
  }

  Future<Either<Failure, void>> getVoidResult(
      Future<void> resultFromLocalOrRemote) async {
    try {
      final result = await resultFromLocalOrRemote;
      return Right(result);
    } on CacheException {
      return const Left(CacheFailure(properties: ['Cache Failure']));
    }
  }
  Future<Either<Failure, List<Profile>>> getListModelResult(
      Future<List<Profile>> resultFromLocalOrRemote) async {
    try {
      final result = await resultFromLocalOrRemote;
      return Right(result);
    } on CacheException {
      return const Left(CacheFailure(properties: ['Cache Failure']));
    }
  }
}
