import 'package:get/get.dart';
import 'package:getx_practice/getxController/controller.dart';

class GetxBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => IncrementController());
  }
}
