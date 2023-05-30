import 'package:get/get.dart';
import 'package:uchka_ah/brand/brand_controller.dart';

class BrandBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BrandController());
  }
}
