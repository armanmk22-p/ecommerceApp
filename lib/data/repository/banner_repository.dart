
import 'package:dartz/dartz.dart';
import '../../di/di.dart';
import '../../util/api_exception.dart';
import '../datasource/banner_datasource.dart';
import '../model/banner.dart';

abstract class IBannerRepository {
  Future<Either<String, List<BannerCampain>>> getBanners();
}

class BannerRepository extends IBannerRepository {
  final IBannerDatasource _datasource = locator.get();

  @override
  Future<Either<String, List<BannerCampain>>> getBanners() async {
    try {
      var response = await _datasource.getBanners();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوای متنی ندارد');
    }
  }
}
