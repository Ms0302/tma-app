import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uchka_ah/brand/brand_binding.dart';
import 'package:uchka_ah/brand/brand_screen.dart';
import 'package:uchka_ah/car_list/car_list_binding.dart';
import 'package:uchka_ah/car_list/car_list_screen.dart';

class CarMainController extends GetxController {
  final drawerList = [
    DrawerHeader(
      child: Image.asset('assets/images/logo.png'),
    ),
    const Divider(
      color: Colors.white,
      thickness: 3.0,
    ),
    ListTile(
      title: const Text('Бидний тухай'),
      onTap: () {},
    ),
    ListTile(
      title: const Text('Зээлийн тооцоолуур'),
      onTap: () {},
    ),
    ListTile(
      title: const Text('Зээлийн нөхцөл'),
      onTap: () {},
    ),
    ListTile(
      title: const Text('Үйлчилгээний нөхцөл'),
      onTap: () {},
    ),
    ListTile(
      title: const Text('Санал хүсэлт'),
      onTap: () {},
    ),
    ListTile(
      title: const Text('Холбоо барих'),
      onTap: () {},
    ),
  ];

  void goToBrand() {
    Get.to(
      () => const BrandScreen(),
      binding: BrandBinding(),
    );
  }

  void goToCarList() {
    Get.to(
      () => CarListScreen(),
      binding: CarListBinding(),
    );
  }
}
