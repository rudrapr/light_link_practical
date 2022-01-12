import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/console.dart';
import 'package:light_link_practical/preference_manager.dart';
import 'package:light_link_practical/routes.dart';
import 'package:light_link_practical/services/auth_srvice.dart';

class AuthMiddleware extends GetMiddleware {
  final AuthSerVice _authSerVice = Get.find<AuthSerVice>();

  @override
  RouteSettings? redirect(String? route) {
    if (_authSerVice.isSignedIn.value) {
      return const RouteSettings(name: Routes.HOME);
    }
    return null;
  }
}
