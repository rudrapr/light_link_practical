import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/auth/auth_view.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onReady: (){

      },
      title: 'Flutter Demo',
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.deepOrangeAccent),
    );
  }
}
