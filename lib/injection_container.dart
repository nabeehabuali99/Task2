import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:task_design2/features/menu/domain/repository/menu_repositories.dart';

import 'features/home/data/data_source/home_local_data_source.dart';
import 'features/home/data/data_source/home_remote_data_source.dart';
import 'features/home/data/repository/home_repository_implementation.dart';
import 'features/home/domin/repository/home_repository.dart';
import 'features/home/domin/usecases/swipe_page_view_usecase.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/menu/data/data_source/menu_local_data_source.dart';
import 'features/menu/data/data_source/menu_remote_data_source.dart';
import 'features/menu/data/repository/menu_repository_implementation.dart';
import 'features/menu/domain/usecases/get_list_names_of_parts.dart';
import 'features/menu/domain/usecases/get_list_names_of_sora.dart';
import 'features/menu/domain/usecases/get_name_of_part_by_search.dart';
import 'features/menu/domain/usecases/get_name_of_sora_by_search.dart';
import 'features/menu/domain/usecases/get_number_of_sora_page_by_search.dart';
import 'features/menu/domain/usecases/get_suitable_part.dart';
import 'features/menu/domain/usecases/get_suitable_sora.dart';
import 'features/menu/presentation/bloc/menu_bloc.dart';
import 'features/profile/data/data_source/profile_local_data_soure.dart';
import 'features/profile/data/data_source/profile_remote_data_source.dart';
import 'features/profile/data/repository/profile_repository_implementation.dart';
import 'features/profile/domain/repository/profile_repository.dart';
import 'features/profile/domain/usecases/add_new_one_list_of_aya.dart';
import 'features/profile/domain/usecases/add_new_one_list_of_search.dart';
import 'features/profile/domain/usecases/get_all_list_of_aya.dart';
import 'features/profile/domain/usecases/get_all_list_of_search.dart';
import 'features/profile/domain/usecases/remove_one_of_list_aya.dart';
import 'features/profile/domain/usecases/remove_one_of_list_search.dart';
import 'features/profile/presentation/bloc/profile_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc Page View
  sl.registerFactory(() => HomeBloc(swipePageViewUsecase: sl()));
  //Bloc Menu
  sl.registerFactory(() => MenuBloc(
      getAllListNameOfParts: sl(),
      getAllListNameOfSora: sl(),
      getNameOfPartBySearch: sl(),
      getNameOfSoraBySearch: sl(),
      getNumberOfSoraPageBySearch: sl(),
      getSuitablePart: sl(),
      getSuitableSora: sl()));
  //Bloc Profile
  sl.registerFactory(() => ProfileBloc(
      getAllListOfAya: sl(),
      addNewOneListOfAya: sl(),
      removeOneOfListSearch: sl(),
      removeOneOfListAya: sl(),
      addNewOneListOfSearch: sl(),
      getAllListOfSearch: sl()));
  // Use cases pageView
  sl.registerLazySingleton(() => SwipePageViewUsecase(sl()));
  //Use cases Menu
  sl.registerLazySingleton(() => GetAllListNameOfParts(sl()));
  sl.registerLazySingleton(() => GetAllListNameOfSora(sl()));
  sl.registerLazySingleton(() => GetNameOfPartBySearch(sl()));
  sl.registerLazySingleton(() => GetNameOfSoraBySearch(sl()));
  sl.registerLazySingleton(() => GetNumberOfSoraPageBySearch(sl()));
  sl.registerLazySingleton(() => GetSuitablePart(sl()));
  sl.registerLazySingleton(() => GetSuitableSora(sl()));
  //Use cases Profile
  sl.registerLazySingleton(() => AddNewOneListOfAya(sl()));
  sl.registerLazySingleton(() => AddNewOneListOfSearch(sl()));
  sl.registerLazySingleton(() => GetAllListOfAya(sl()));
  sl.registerLazySingleton(() => GetAllListOfSearch(sl()));
  sl.registerLazySingleton(() => RemoveOneOfListAya(sl()));
  sl.registerLazySingleton(() => RemoveOneOfListSearch(sl()));

  // Core

  // Repository PageView
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImplementation(
        homeLocalDataSource: sl(),
        homeRemoteDataSource: sl(),
      ));
  // Repository Menu
  sl.registerLazySingleton<MenuRepository>(() => MenuRepositoryImplementation(
        remoteDataSource: sl(),
        localDataSource: sl(),
        networkInfo: sl(),
      ));
  // Repository Profile
  sl.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImplementation(
            remoteDataSource: sl(),
            localDataSource: sl(),
            networkInfo: sl(),
          ));

  // Data sources Page View
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImplementation(),
  );
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImplementation(),
  );
  //Data sources Menu
  sl.registerLazySingleton<MenuLocalDataSource>(
    () => MenuLocalDataSourceImplementation(),
  );
  sl.registerLazySingleton<MenuRemoteDataSource>(
    () => MenuRemoteDataSourceImplementation(),
  );
  //Data sources Profile
  sl.registerLazySingleton<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImplementation(),
  );
  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImplementation(),
  );

  //! xExternal
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
