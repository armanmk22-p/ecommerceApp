import 'package:dartz/dartz.dart';
import '../../data/model/category.dart';
import '../../data/model/product_image.dart';
import '../../data/model/product_peroperty.dart';
import '../../data/model/product_variant.dart';

abstract class ProductState {}

class ProductInitState extends ProductState {}

class ProductDetailLoadingState extends ProductState {}

class ProductDetailResponseState extends ProductState {
  Either<String, List<ProductImage>> productImages;
  Either<String, List<ProductVarint>> productVariant;
  Either<String, Category> productCategory;
  Either<String, List<Property>> productProperties;

  ProductDetailResponseState(this.productImages, this.productVariant,
      this.productCategory, this.productProperties);
}
