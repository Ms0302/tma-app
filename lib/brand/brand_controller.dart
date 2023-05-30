import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uchka_ah/brand_pick/brand_pick_screen.dart';

class BrandController extends GetxController {
  final list = [
    GestureDetector(
      onTap: () => Get.to(()=>BrandPicker(),),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20)),
        width: 80,
        height: 80,
        child: Image.asset('assets/images/audi.png'),
      ),
    ),
    Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20)),
      width: 80,
      height: 80,
      child: Image.asset('assets/images/toyota.png'),
    ),
    Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20)),
      width: 80,
      height: 80,
      child: Image.asset('assets/images/audi.png'),
    ),
    Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20)),
      width: 80,
      height: 80,
      child: Image.asset('assets/images/toyota.png'),
    ),
  ];
}
