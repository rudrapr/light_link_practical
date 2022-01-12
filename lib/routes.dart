import 'package:get/get.dart';
import 'package:light_link_practical/auth/auth_binding.dart';
import 'package:light_link_practical/auth/auth_view.dart';
import 'package:light_link_practical/home/home_binding.dart';
import 'package:light_link_practical/home/home_view.dart';

import 'middlewires/auth_middleware.dart';

class Routes {
  static const INITIAL = "/root";
  static const AUTH = '/auth';
  static const HOME = '/home';

  static final routes = [
    GetPage(
        name: INITIAL,
        page: () => AuthPage(),
        binding: AuthBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
      name: HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
