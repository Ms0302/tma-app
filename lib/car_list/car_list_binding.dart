import 'package:get/get.dart';
import 'package:uchka_ah/car_list/car_list_controller.dart';

class CarListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarListController());
  }
}
