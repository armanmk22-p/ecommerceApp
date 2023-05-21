
import 'package:ecommerce_app/data/model/variant.dart';
import 'package:ecommerce_app/data/model/variant_type.dart';

class ProductVarint {
  VariantType variantType;
  List<Variant> variantList;

  ProductVarint(this.variantType, this.variantList);
}
