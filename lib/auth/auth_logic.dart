import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/models/user_model.dart';
import 'package:light_link_practical/preference_manager.dart';
import 'package:light_link_practical/routes.dart';

class AuthLogic extends GetxController {
  var userModel = UserModel().obs;
  late PreferenceManager _preferenceManager;

  var loading = false.obs;

  late GlobalKey<FormState> loginKey;

  var index = 0.obs;

  AuthLogic() {
    _preferenceManager = PreferenceManager();
  }

  Future register() async {
    try {
      loading.value = true;
      await _preferenceManager.saveUser(userModel.value);
      loading.value = false;
      Get.showSnackbar(GetSnackBar(
        message: 'Registration successful',
      ));
    } catch (e) {}
  }

  Future login() async {
    try {
      loading.value = true;
      UserModel? _user = await _preferenceManager.readUser();
      if (userModel.value.password == _user?.password) {
        Get.toNamed(Routes.HOME);
        Get.showSnackbar(GetSnackBar(
          message: 'Login successful',
        ));
      }
      loading.value = false;
    } catch (e) {}
  }
}
