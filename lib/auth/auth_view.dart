import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/auth/login_view.dart';
import 'package:light_link_practical/auth/register_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'auth_logic.dart';

class AuthPage extends GetView<AuthLogic> {
  @override
  Widget build(BuildContext context) {
    controller.loginKey = GlobalKey<FormState>();
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ToggleSwitch(
              minWidth: 90.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.green[800]!],
                [Colors.red[800]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 0,
              totalSwitches: 2,
              labels: ['Existing', 'New'],
              radiusStyle: true,
              onToggle: (index) {
                print('switched to: $index');
                controller.index.value = index;
              },
            ).paddingOnly(top: 300, bottom: 40),
            Obx(() => controller.index == 0 ? LoginView() : RegisterView())
          ],
        ),
      ),
    ));
  }
}
