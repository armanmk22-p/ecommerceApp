import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/datasource/authentication_datasource.dart';
import '../data/repository/authentication_repository.dart';

var locator = GetIt.instance;
Future<void> getItInit() async {

  //dataSource
  locator.registerSingleton<Dio>(Dio(
    BaseOptions(baseUrl: 'http://startflutter.ir/api/')));

  locator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  //repositories
  locator.registerFactory<IAuthRepository>(() => AuthenticationRepository());
  locator.registerFactory<IAuthenticationDatasource>(() => AuthenticationRemote());

}
