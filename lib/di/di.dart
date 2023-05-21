import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../bloc/basket/basket_bloc.dart';
import '../data/datasource/authentication_datasource.dart';
import '../data/datasource/banner_datasource.dart';
import '../data/datasource/basket_datasource.dart';
import '../data/datasource/category_datasource.dart';
import '../data/datasource/category_product_datasource.dart';
import '../data/datasource/product_data_source.dart';
import '../data/datasource/product_detail_datasource.dart';
import '../data/repository/authentication_repository.dart';
import '../data/repository/banner_repository.dart';
import '../data/repository/basket_repository.dart';
import '../data/repository/category_product_repository.dart';
import '../data/repository/category_repository.dart';
import '../data/repository/product_detail_repository.dart';
import '../data/repository/product_repository.dart';

var locator = GetIt.instance;
Future<void> getItInit() async {
  locator.registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: 'http://startflutter.ir/api/')));
  locator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  //datasources
  locator
      .registerFactory<IAuthenticationDatasource>(() => AuthenticationRemote());

  locator
      .registerFactory<ICategoryDatasource>(() => CategoryRemoteDatasource());
  locator.registerFactory<IBannerDatasource>(() => BannerRemoteDatasource());
  locator.registerFactory<IProductDataSource>(() => ProductRemoteDataSource());
  locator.registerFactory<IDetailProductDatasource>(
      () => DetailProductRemoteDatasource());
  locator.registerFactory<ICategoryProductDatasource>(
      () => CategoryProductRemoteDatasource());
  locator.registerFactory<IBasketDatasource>(() => BasketLocalDatasouce());
  //repositories
  locator.registerFactory<IAuthRepository>(() => AuthencticationRepository());
  locator.registerFactory<ICategoryRepository>(() => CategoryRepository());
  locator.registerFactory<IBannerRepository>(() => BannerRepository());
  locator.registerFactory<IProductRepository>(() => ProductRepository());
  locator.registerFactory<IDetailProductRepository>(
      () => DetailProductRepository());
  locator.registerFactory<ICategoryProductRepository>(
      () => CategoryProductRepository());
  locator.registerFactory<IBasketRepository>(() => BasketRepository());

  //bloc
  locator.registerSingleton<BasketBloc>(BasketBloc());
}
