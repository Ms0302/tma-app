import 'package:get/get.dart';
import 'package:uchka_ah/car_main/car_main_controller.dart';

class CarMainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CarMainController());
  }

}