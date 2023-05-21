
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../di/di.dart';

class AuthManager {
  static final ValueNotifier<String?> authChangeNotifire = ValueNotifier(null);
  static final SharedPreferences _sharedPref = locator.get();

  static void saveToken(String token) async {
    _sharedPref.setString('access_token', token);
    authChangeNotifire.value = token;
  }

  static String readAuth() {
    return _sharedPref.getString('access_token') ?? '';
  }

   static void logout() {
     _sharedPref.clear();
     authChangeNotifire.value = null;
   }

  static bool isLogedin() {
    String token = readAuth();
    return token.isNotEmpty; //if return true means token is not empty so the user is already logIn
  }
}