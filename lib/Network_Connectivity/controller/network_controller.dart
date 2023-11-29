import 'dart:async';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  final Connectivity _connectivity = Connectivity();

  final isNetwork = false.obs;

  late StreamSubscription<ConnectivityResult> connectionSubsciption;

  @override
  void onInit() {
    initConnectivity();
    connectionSubsciption =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.onInit();
  }

  @override
  void onClose() {
    connectionSubsciption.cancel();
    super.onClose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult? result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log(e.toString());
    }
    return _updateConnectionStatus(result!);
  }

  _updateConnectionStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        isNetwork.value = false;
        connectionStatus.value = 1;
        break;

      case ConnectivityResult.mobile:
        isNetwork.value = false;
        connectionStatus.value = 2;
        break;
      case ConnectivityResult.none:
        isNetwork.value = true;
        connectionStatus.value = 3;

        break;
      default:
        Get.snackbar('Network error', 'failed to get network');
    }
  }
}
