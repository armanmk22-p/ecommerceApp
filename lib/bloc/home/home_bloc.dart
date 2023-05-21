import 'package:bloc/bloc.dart';
import '../../data/repository/banner_repository.dart';
import '../../data/repository/category_repository.dart';
import '../../data/repository/product_repository.dart';
import '../../di/di.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IBannerRepository _bannerRepository = locator.get();
  final ICategoryRepository _categoryRepository = locator.get();
  final IProductRepository _productRepository = locator.get();

  HomeBloc() : super(HomeInitState()) {
    on<HomeGetInitilzeData>((event, emit) async {
      emit(HomeLoadingState());
      var bannerList = await _bannerRepository.getBanners();
      var categoryList = await _categoryRepository.getCategories();
      var productList = await _productRepository.getproducts();
      var hotestProductList = await _productRepository.getHotest();
      var bestSellerProductList = await _productRepository.getBsetSeller();

      emit(HomeRequestSuccessState(bannerList, categoryList, productList,
          hotestProductList, bestSellerProductList));
    });
  }
}
