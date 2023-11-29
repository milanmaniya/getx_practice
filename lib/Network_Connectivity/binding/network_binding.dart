import 'package:get/get.dart';
import 'package:getx_practice/Network_Connectivity/controller/network_controller.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => NetworkController(),
    );
  }
}
