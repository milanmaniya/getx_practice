import 'package:get/get.dart';
import 'package:getx_practice/Getview%20and%20Getwidget/controller.dart';
import 'package:getx_practice/getxController/controller.dart';

class AllController extends GetxController {
  get controller {
    Get.lazyPut(
      () => IncrementController(),
    );
    Get.lazyPut(() => GetViewAndGetWidgetController());
  }
}
