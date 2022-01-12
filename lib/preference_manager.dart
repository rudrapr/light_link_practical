import 'dart:convert';

import 'package:light_link_practical/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static String USER_KEY = 'user_key';

  Future<UserModel?> readUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? data = prefs.getString(USER_KEY);
    return data != null ? UserModel.fromJson(jsonDecode(data)) : null;
  }

  Future saveUser(UserModel user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(USER_KEY, jsonEncode(user.toJson()));
  }
}
