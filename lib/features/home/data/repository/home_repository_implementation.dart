import 'package:dartz/dartz.dart';

import 'package:task_design2/core/error/failures.dart';

import 'package:task_design2/features/home/domin/entities/home_entities.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domin/repository/home_repository.dart';
import '../data_source/home_local_data_source.dart';
import '../data_source/home_remote_data_source.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImplementation(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, Home>> pageViewSwipe(int index) async {
    try {
      final localHome = await homeLocalDataSource.getDataFromIndex(index);
      return Right(localHome);
    } on CacheException {
      return const Left(CacheFailure(properties: ['Cache Failure']));
    }
  }
}
