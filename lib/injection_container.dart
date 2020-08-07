import 'package:get_it/get_it.dart';
import 'package:practice/features/data/repositories/practice_repository_impl.dart';
import 'package:practice/features/domain/usecases/user/get_login.dart';
import 'package:practice/features/presentation/bloc/bloc.dart';

import 'features/domain/repositories/practice_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => LoginBloc(getLogin: sl()));

  sl.registerFactory(() => GetLogin(sl()));

  sl.registerLazySingleton<PracticeRepository>(() => PracticeRepositoryImpl());
}
