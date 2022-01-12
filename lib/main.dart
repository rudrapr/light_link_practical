import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/console.dart';
import 'package:light_link_practical/services/api_service.dart';
import 'package:light_link_practical/services/auth_srvice.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Console.log('before');
  await Get.putAsync(() => AuthSerVice().init());
  Get.put(() => ApiService());
  Console.log('pass');
  runApp(const MyApp());
}
