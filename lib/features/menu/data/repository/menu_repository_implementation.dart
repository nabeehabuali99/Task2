import 'package:dartz/dartz.dart';

import 'package:task_design2/core/error/failures.dart';

import 'package:task_design2/features/menu/domain/entities/menu.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/menu_repositories.dart';
import '../data_source/menu_local_data_source.dart';
import '../data_source/menu_remote_data_source.dart';

class MenuRepositoryImplementation implements MenuRepository {
  final MenuRemoteDataSource remoteDataSource;
  final MenuLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  MenuRepositoryImplementation(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, List<Menu>>> getNameOfPartBySearch(
      String nameOfPart) async {
    return await getListModelResult(
        localDataSource.getNameOfPartBySearchLocal(nameOfPart));
  }

  @override
  Future<Either<Failure, List<Menu>>> getNameOfSoraBySearch(
      String nameOfSora) async {
    return await getListModelResult(
        localDataSource.getNameOfSoraBySearchLocal(nameOfSora));
  }

  @override
  Future<Either<Failure, void>> getNumberOfSoraPageBySearch(
      int numberOfPage) async {
    return await getVoidResult(
        localDataSource.getNumberOfSoraPageBySearchLocal(numberOfPage));
  }

  @override
  Future<Either<Failure, List<Menu>>> getAllListNameOfParts() async {
    return await getListModelResult(
        localDataSource.getAllListNameOfPartsLocal());
  }

  @override
  Future<Either<Failure, List<Menu>>> getAllListNameOfSora() async {
    return await getListModelResult(
        localDataSource.getAllListNameOfSoraLocal());
  }

  Future<Either<Failure, List<Menu>>> getListModelResult(
      Future<List<Menu>> resultFromLocalOrRemote) async {
    try {
      final result = await resultFromLocalOrRemote;
      return Right(result);
    } on CacheException {
      return const Left(CacheFailure(properties: ['Cache Failure']));
    }
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

  @override
  Future<Either<Failure, void>> getSuitablePart(int numberOfPart) async {
    return await getVoidResult(
        localDataSource.getSuitablePartLocal(numberOfPart));
  }

  @override
  Future<Either<Failure, void>> getSuitableSora(int numberOfSora) async {
    return await getVoidResult(
        localDataSource.getSuitableSoraLocal(numberOfSora));
  }
}
