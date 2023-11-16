import 'package:get/get.dart';

class GetViewAndGetWidgetController extends GetxController {
  var number = 0.obs;

  void increment() {
    number.value++;
  }
}
