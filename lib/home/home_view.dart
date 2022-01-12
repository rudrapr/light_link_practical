import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:light_link_practical/home/gid_item.dart';
import 'package:light_link_practical/home/item_wrapper.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) => ItemWrapper(
              onItemCreated: () {
                controller.getNextPage(index);
              },
              child: GridItemView(
                companyModel: controller.list[index],
              )),
          itemCount: controller.list.length,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
      ),
    );
  }
}
