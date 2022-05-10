import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'features/home/data/data_source/home_local_data_source.dart';
import 'features/home/data/data_source/home_remote_data_source.dart';
import 'features/home/data/repository/home_repository_implementation.dart';
import 'features/home/domin/repository/home_repository.dart';
import 'features/home/domin/usecases/swipe_page_view_usecase.dart';
import 'features/home/presentation/bloc/home_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc
  sl.registerFactory(() => HomeBloc(swipePageViewUsecase: sl()));
  // Use cases
  sl.registerLazySingleton(() => SwipePageViewUsecase(sl()));

  // Core

  // Repository
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImplementation(
        homeLocalDataSource: sl(),
        homeRemoteDataSource: sl(),
      ));

  // Data sources
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImplementation(),
  );
  sl.registerLazySingleton<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImplementation(),
  );

  //! xExternal

  sl.registerLazySingleton(() => InternetConnectionChecker());
}
