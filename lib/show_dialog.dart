import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogMessage extends StatefulWidget {
  const ShowDialogMessage({super.key});

  @override
  State<ShowDialogMessage> createState() => _ShowDialogMessageState();
}

class _ShowDialogMessageState extends State<ShowDialogMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Get.defaultDialog(
            title: 'bdfbdjfbj',
            barrierDismissible: true,
            middleText: 'njdjfb',
            textConfirm: 'dfdfhv',
            textCancel: 'dbhbd',
            confirm: ElevatedButton(
              onPressed: () {},
              child: const Text('Confirum'),
            ),
            cancel: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Cancel'),
            ),
          );
        },
        child: const Text('Show Dialog Box'),
      ),
    ));
  }
}
