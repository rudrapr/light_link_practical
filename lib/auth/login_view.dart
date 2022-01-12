import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/auth/auth_logic.dart';

class LoginView extends GetView<AuthLogic> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding:
        EdgeInsets.only(top: 10, bottom: 100, left: 10, right: 10),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Obx(()=>
          controller.loading.value? Center(child: CircularProgressIndicator()): Form(
            key: controller.loginKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'Email Address',
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onChanged: (txt) => controller.userModel.value.email,
                  onSaved: (txt) => controller.userModel.value.email,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onChanged: (txt) => controller.userModel.value.email,
                  onSaved: (txt) => controller.userModel.value.email,
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        bottom: -20,
        left: 50,
        right: 50,
        child: MaterialButton(
          onPressed: () {
            controller.login();
          },
          color: Colors.deepOrangeAccent,
          minWidth: 300,
          height: 50,
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      )
    ]);
  }
}
