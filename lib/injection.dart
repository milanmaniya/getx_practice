import 'package:get/get.dart';
import 'package:getx_practice/Getview%20and%20Getwidget/controller.dart';
import 'package:getx_practice/getxController/controller.dart';
import 'package:getx_practice/image_picker/controller/image_picker_controller.dart';

class AllController extends GetxController {
  get controller {
    Get.lazyPut(
      () => IncrementController(),
    );
    Get.lazyPut(() => GetViewAndGetWidgetController());
    Get.lazyPut(() => ImagePickerController());
  }
}
