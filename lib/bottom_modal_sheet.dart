import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomModalSheetDemo extends StatefulWidget {
  const BottomModalSheetDemo({super.key});

  @override
  State<BottomModalSheetDemo> createState() => _BottomModalSheetDemoState();
}

class _BottomModalSheetDemoState extends State<BottomModalSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              isDismissible: true,
              barrierColor: Colors.green,
              elevation: 10,
              backgroundColor: Colors.yellow,
              Container(),
            );
          },
          child: const Text('Show Modal Bottom Sheet'),
        ),
      ),
    );
  }
}
