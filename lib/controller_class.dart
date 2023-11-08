import 'package:get/get.dart';
import 'package:getx_practice/getxController/controller.dart';

class AllController extends GetxController {
  get controller {
    Get.put(
      IncrementController(),
    );
  }
}
