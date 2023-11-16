import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Getview%20and%20Getwidget/controller.dart';

class GetViewAndGetWidgetState extends GetView<GetViewAndGetWidgetController> {
  const GetViewAndGetWidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    var con = Get.find<GetViewAndGetWidgetController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                con.number.string,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            
            ElevatedButton(
              onPressed: () {
                con.increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
