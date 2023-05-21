import 'package:bloc/bloc.dart';
import '../../data/repository/category_product_repository.dart';
import '../../di/di.dart';
import 'category_product_event.dart';
import 'category_product_state.dart';

class CategoryProductBloc
    extends Bloc<CategoryProductEvent, CategoryProductState> {
  final ICategoryProductRepository _repository = locator.get();

  CategoryProductBloc() : super(CategoryProductLoadingState()) {
    on<CategoryProductInitialize>((event, emit) async {
      var response = await _repository.getProductByCategoryId(event.categoryId);
      emit(CategoryProductResponseSuccessState(response));
    });
  }
}
