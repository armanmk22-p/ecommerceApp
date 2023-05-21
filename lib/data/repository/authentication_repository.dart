

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../di/di.dart';
import '../../util/api_exception.dart';
import '../../util/auth_manager.dart';
import '../datasource/authentication_datasource.dart';

abstract class IAuthRepository {

  Future<Either<String, String>> register(String username, String password, String passwordConfirm);

  Future<Either<String, String>> login(String username, String password);
}


class AuthenticationRepository extends IAuthRepository {

  final IAuthenticationDatasource _datasource = locator.get();
  final SharedPreferences _sharedPref = locator.get();


  @override
  Future<Either<String, String>> register(String username, String password, String passwordConfirm) async {
    try {
      await _datasource.register('armanmk2009', '12348625', '12348625');
      return right('register is done successfully');
    } on ApiException catch (ex) {
      return left(ex.message ?? 'there is no error');
    }
  }

  @override
  Future<Either<String, String>> login(String username, String password) async {
    try {
      String token = await _datasource.login(username, password);
      if (token.isNotEmpty) {
        AuthManager.saveToken(token);
        return right('you are login');
      } else {
        return left('something went wrong ');
      }
    } on ApiException catch (ex) {
      return left('${ex.message}');
    }
  }
}