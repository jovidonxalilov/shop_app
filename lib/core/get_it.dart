
import 'package:get_it/get_it.dart';
import 'package:shop_app/core/data/client.dart';
import 'package:shop_app/core/data/repository/product_repository.dart';
import 'package:shop_app/features/home/manager/home_bloc.dart';

final sl = GetIt.instance;

void setupLocator() {
  // 1. API client
  sl.registerLazySingleton<ApiClient>(() => ApiClient());

  // 2. Repository
  sl.registerLazySingleton<ProductRepository>(() => ProductRepository(client: sl()));

  // 3. Bloc
  sl.registerFactory(() => HomeBloc(repo: sl()));
}