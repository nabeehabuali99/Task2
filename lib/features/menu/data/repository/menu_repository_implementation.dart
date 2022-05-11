import 'package:dartz/dartz.dart';

import 'package:task_design2/core/error/failures.dart';

import 'package:task_design2/features/menu/domain/entities/menu.dart';

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
  Future<Either<Failure, List<Menu>>> getNameOfPartBySearch(String nameOfPart) {
    // TODO: implement getNameOfPartBySearch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Menu>>> getNameOfSoraBySearch(String nameOfSora) {
    // TODO: implement getNameOfSoraBySearch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Menu>> getNumberOfSoraPageBySearch(int numberOfPage) {
    // TODO: implement getNumberOfSoraPageBySearch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Menu>>> getAllListNameOfParts() {
    // TODO: implement getAllListNameOfParts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Menu>>> getAllListNameOfSora() {
    // TODO: implement getAllListNameOfSora
    throw UnimplementedError();
  }



}