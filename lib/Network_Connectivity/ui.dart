import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Network_Connectivity/controller/network_controller.dart';

class NetworkUi extends StatefulWidget {
  const NetworkUi({super.key});

  @override
  State<NetworkUi> createState() => _NetworkUiState();
}

class _NetworkUiState extends State<NetworkUi> {
  final controller = Get.find<NetworkController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => controller.isNetwork.value == false
              ? Text(
                  controller.connectionStatus.value == 1
                      ? 'Network is Wifi'
                      : (controller.connectionStatus.value == 2
                          ? 'Network is mobile'
                          : 'None'),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
