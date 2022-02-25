import 'package:get_it/get_it.dart';

import 'model.dart';

//4:54

final GetIt getIt = GetIt.instance;

void setUp(){
  getIt.registerLazySingleton(() => ModelClass());
}