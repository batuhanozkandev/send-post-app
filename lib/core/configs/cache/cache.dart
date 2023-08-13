import 'package:hive_flutter/hive_flutter.dart';

//@sendpostapp developer [Batuhan Ozkan]
//This class is initialise the cache. I've used the Hive as cache.

//The token will be returned 'null' if user logged in first time.
// Route to => boarding screen

//The token will be returned empty string '' if user logged in before but not signed in.
// Route to => log in screen

//The token will be returned random string if user logged in.
// Route to => home screen

class Cache {
  Cache._();

  static Box? _box;
  static String? _token;
  static String? _uID;

  Box? get box => _box;

  String? get token => _token;

  String? get uID => _uID;

  static void init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('App');
    _token = getToken();
    _uID = getUID();
  }

  // Auth

  static String? getToken() {
    return _box?.get('token');
  }

  static void setToken(String token) {
    _box?.put('token', token);
  }

  static Future<void>? deleteToken() {
    return _box?.delete('token');
  }

  static String? getUID() {
    return _box?.get('uID');
  }

  static void setUID(String uID) {
    _box?.put('uID', uID);
  }

  static void updateLogInState({loggedIn = false}) {
    _box?.put('isLoggedIn', loggedIn);
  }

  static bool? isLoggedIn() {
    return _box?.get('isLoggedIn');
  }
}
