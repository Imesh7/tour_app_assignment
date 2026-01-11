import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test/features/explore/data/respositoryImpl/explore_repository_impl.dart';
import 'package:test/features/explore/domain/repository/explore_repository.dart';
import 'package:test/features/explore/domain/usecase/explore_usecase.dart';

import 'core/api/api_client.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  //Api client
  getIt.registerSingleton<ApiClient>(ApiClient(getIt<Dio>()));
  //Respoitory impl
  getIt.registerSingleton<ExploreRepository>(
      ExploreRepositoryImpl(getIt<ApiClient>()));
      
  // Use case
  getIt
      .registerSingleton<ExploreTripsUsecase>(ExploreTripsUsecase(getIt<ExploreRepository>()));
      getIt
      .registerSingleton<ExploreLivingStylesUsecase>(ExploreLivingStylesUsecase(getIt<ExploreRepository>()));
      getIt
      .registerSingleton<ExploreOtherExpUsecase>(ExploreOtherExpUsecase(getIt<ExploreRepository>()));
}