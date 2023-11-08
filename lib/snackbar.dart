import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarDemo extends StatefulWidget {
  const SnackBarDemo({super.key});

  @override
  State<SnackBarDemo> createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              'Information',
              'This is information message',
              snackPosition: SnackPosition.BOTTOM,
              isDismissible: true,
              dismissDirection: DismissDirection.vertical,
            );
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
