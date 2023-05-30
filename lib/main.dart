import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uchka_ah/car_main/car_main_binding.dart';
import 'package:uchka_ah/car_main/car_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarMainScreen(),
      initialBinding: CarMainBinding(),
    );
  }
}
